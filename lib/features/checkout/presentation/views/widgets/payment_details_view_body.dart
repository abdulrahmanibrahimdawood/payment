import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 12)),
        SliverToBoxAdapter(
          child: SizedBox(height: 62, child: PaymentMethodsListView()),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32.0, left: 16, right: 16),
              child: CustomButton(
                text: 'payment',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ThankYouView()),
                    );
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
