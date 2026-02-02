import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/styles/text_styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/images/master_card.svg',
              width: 24,
              height: 24,
            ),
            SizedBox(width: 24),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Credit Card ', style: TextStyles.style18),
                  TextSpan(text: 'Mastercard **78', style: TextStyles.style16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
