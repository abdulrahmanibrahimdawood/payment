import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatefulWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  State<PaymentMethodsBottomSheet> createState() =>
      _PaymentMethodsBottomSheetState();
}

class _PaymentMethodsBottomSheetState extends State<PaymentMethodsBottomSheet> {
  bool isPaypal = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 32),

          SizedBox(height: 64, child: const PaymentMethodsListView()),
          SizedBox(height: 32),
          CustomButtonBlocConsumer(isPaypal: isPaypal),
        ],
      ),
    );
  }
}
