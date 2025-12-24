import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 12),
          SizedBox(height: 62, child: PaymentMethodsListView()),
          SizedBox(height: 8),
          CustomCreditCard(),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
