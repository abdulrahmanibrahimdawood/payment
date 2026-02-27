import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment/features/checkout/presentation/manager/cubit/stripe_payment_cubit.dart';
import 'package:payment/features/checkout/presentation/views/thank_you_view.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key});

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
            PaymentIntentInputModel inputModel = PaymentIntentInputModel(
              customerId: 'cus_U3U1v7h3z8EoSX',
              amount: '1020',
              currency: 'USD',
            );
            BlocProvider.of<StripePaymentCubit>(
              context,
            ).makePayment(inputModel);
          },
        );
      },
    );
  }
}
