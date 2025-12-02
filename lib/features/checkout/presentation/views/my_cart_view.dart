import 'package:flutter/material.dart';
import 'package:payment/core/styles/text_styles.dart';
import 'package:payment/features/checkout/presentation/views/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Cart", style: TextStyles.style25),
        leading: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
      ),
      body: MyCartViewBody(),
    );
  }
}
