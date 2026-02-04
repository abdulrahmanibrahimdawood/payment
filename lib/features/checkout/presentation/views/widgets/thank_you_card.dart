import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        color: Color(0xffD9D9D9).withAlpha(120),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 88.0),
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
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(FontAwesomeIcons.barcode, size: 64),
                  Container(
                    width: 113,
                    height: 58,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1.50,
                          color: const Color(0xFF34A853),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'PAID',
                        textAlign: TextAlign.center,
                        style: TextStyles.style24.copyWith(
                          color: const Color(0xFF34A853),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.width * 0.6 + 19) / 2.9,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
