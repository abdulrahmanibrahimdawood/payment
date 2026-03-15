import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment/core/utils/api_keys.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment/features/checkout/data/models/paypal_models/amount/amount.model.dart';
import 'package:payment/features/checkout/data/models/paypal_models/amount/details.model.dart';
import 'package:payment/features/checkout/data/models/paypal_models/items/item.model.dart';
import 'package:payment/features/checkout/data/models/paypal_models/items/items_list.model.dart';
import 'package:payment/features/checkout/presentation/manager/cubit/stripe_payment_cubit.dart';
import 'package:payment/features/checkout/presentation/views/thank_you_view.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key, required this.isPaypal});
  final bool isPaypal;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripePaymentCubit, StripePaymentState>(
      listener: (context, state) {
        if (state is StripePaymentSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) {
                return ThankYouView();
              },
            ),
          );
        }
        if (state is StripePaymentFailure) {
          log(state.errMessage);
          Navigator.of(context).pop();
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
      },
      builder: (context, state) {
        return CustomButton(
          isLoading: state is StripePaymentLoading ? true : false,
          text: 'Continue',
          onTap: () {
            if (isPaypal) {
              var transactionsData = getTransactionsData();
              excutePaypalPayment(context, transactionsData);
            } else {
              excuteStripePayment(context);
            }
          },
        );
      },
    );
  }

  void excuteStripePayment(BuildContext context) {
    PaymentIntentInputModel inputModel = PaymentIntentInputModel(
      customerId: 'cus_U3U1v7h3z8EoSX',
      amount: '1020',
      currency: 'USD',
    );
    BlocProvider.of<StripePaymentCubit>(context).makePayment(inputModel);
  }

  void excutePaypalPayment(
    BuildContext context,
    ({AmountModel amount, ItemsListModel itemList}) transactionsData,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => PaypalCheckoutView(
          sandboxMode: true,
          clientId: ApiKeys.clientId,
          secretKey: ApiKeys.paypalSecretKey,
          transactions: [
            {
              "amount": transactionsData.amount.toJson(),
              "description": "The payment transaction description.",
              "item_list": transactionsData.itemList.toJson(),
            },
          ],
          note: "Contact us for any questions on your order.",
          onSuccess: (Map params) async {
            log("onSuccess: $params");
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ThankYouView();
                },
              ),
              (route) {
                if (route.settings.name == '/') {
                  return true;
                } else {
                  return false;
                }
              },
            );
          },
          onError: (error) {
            log("onError: $error");
            Navigator.pop(context);
          },
          onCancel: () {
            log('cancelled:');
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  ({AmountModel amount, ItemsListModel itemList}) getTransactionsData() {
    var amount = AmountModel(
      currency: 'USD',
      total: '100',
      details: Details(shipping: '0', shippingDiscount: 0, subtotal: '100'),
    );
    List<OrderItemModel> orders = [
      OrderItemModel(currency: 'USD', name: 'Apple', price: '4', quantity: 10),
      OrderItemModel(currency: 'USD', name: 'Apple', price: '5', quantity: 12),
    ];
    var itemList = ItemsListModel(orders: orders);

    return (amount: amount, itemList: itemList);
  }
}
