import 'package:flutter/material.dart';
import 'package:payment/core/styles/text_styles.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, textAlign: TextAlign.center, style: TextStyles.style18),
        Text(value, style: TextStyles.style18),
      ],
    );
  }
}
