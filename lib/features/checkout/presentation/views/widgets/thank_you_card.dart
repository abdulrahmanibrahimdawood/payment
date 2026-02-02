import 'package:flutter/material.dart';
import 'package:payment/core/styles/text_styles.dart';
import 'package:payment/features/checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:payment/features/checkout/presentation/views/widgets/total_price_widget.dart';

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
        padding: const EdgeInsets.only(top: 104.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Text(
                'Thank you!',
                textAlign: TextAlign.center,
                style: TextStyles.style25,
              ),
              SizedBox(height: 8),
              Text(
                'Your transaction was successful',
                textAlign: TextAlign.center,
                style: TextStyles.style20,
              ),
              SizedBox(height: 48),
              PaymentItemInfo(title: 'Date', value: '01/24/2023'),
              SizedBox(height: 16),
              PaymentItemInfo(title: "Time", value: "12:30 PM"),
              SizedBox(height: 16),
              PaymentItemInfo(title: "To", value: "John Doe"),
              Divider(height: 80, thickness: 2),
              TotalPrice(title: 'Total', value: '\$50.97'),
              SizedBox(height: 24),
              CardInfoWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
