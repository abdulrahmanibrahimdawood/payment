import 'package:flutter/material.dart';
import 'package:payment/core/styles/text_styles.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_item_info.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Text(
                'Thank you!',
                textAlign: TextAlign.center,
                style: TextStyles.style25,
              ),
              Text(
                'Your transaction was successful',
                textAlign: TextAlign.center,
                style: TextStyles.style20,
              ),
              SizedBox(height: 40),
              PaymentItemInfo(title: 'Date', value: '01/24/2023'),
              SizedBox(height: 12),
              PaymentItemInfo(title: "Time", value: "12:30 PM"),
              SizedBox(height: 12),
              PaymentItemInfo(title: "To", value: "John Doe"),
            ],
          ),
        ),
      ),
    );
  }
}
