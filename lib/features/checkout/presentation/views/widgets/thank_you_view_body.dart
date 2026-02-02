import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 64,
            left: 32,
            right: 32,
            bottom: 32,
          ),
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
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 56,
          top: 16,
          child: CircleAvatar(
            radius: 56,
            backgroundColor: Color(0xffD9D9D9),
            child: CircleAvatar(
              radius: 48,
              backgroundColor: Colors.green,
              child: Icon(Icons.check, color: Colors.white, size: 72),
            ),
          ),
        ),
        Positioned(
          left: 56,
          right: 56,
          bottom: MediaQuery.of(context).size.width * 0.4 + 19,
          child: Row(
            children: List.generate(
              22,
              (index) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(height: 2, color: Color(0xffB8B8B8)),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
