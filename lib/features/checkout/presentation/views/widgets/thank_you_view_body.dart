import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(32),
          child: Container(
            decoration: ShapeDecoration(
              color: Color(0xffD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.width * 0.4,
          child: CircleAvatar(radius: 24, backgroundColor: Colors.white),
        ),
        Positioned(
          right: 0,
          bottom: MediaQuery.of(context).size.width * 0.4,
          child: CircleAvatar(radius: 24, backgroundColor: Colors.white),
        ),
      ],
    );
  }
}
