import 'package:flutter/material.dart';
import 'package:payment/core/styles/text_styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyles.style18),
        Spacer(),
        Text(value, style: TextStyles.style18),
      ],
    );
  }
}
