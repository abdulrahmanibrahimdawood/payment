import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/custom_check_icon.dart';
import 'package:payment/features/checkout/presentation/views/widgets/custom_dashed_line.dart';
import 'package:payment/features/checkout/presentation/views/widgets/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 48,
            left: 32,
            right: 32,
            bottom: 32,
          ),
          child: ThankYouCard(),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.width * 0.45,
          child: CircleAvatar(radius: 24, backgroundColor: Colors.white),
        ),
        Positioned(
          right: 0,
          bottom: MediaQuery.of(context).size.width * 0.45,
          child: CircleAvatar(radius: 24, backgroundColor: Colors.white),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 48,
          top: 8,
          child: CustomCheckIcon(),
        ),
        Positioned(
          left: 56,
          right: 56,
          bottom: MediaQuery.of(context).size.width * 0.6,
          child: CustomDashedLine(),
        ),
      ],
    );
  }
}
