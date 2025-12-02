import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/order_info_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 18),
          Image.asset("assets/images/basket_image.png"),
          SizedBox(height: 25),
          OrderInfoItem(title: 'Order Subtotal', value: '\$ 1,000'),
          SizedBox(height: 3),
          OrderInfoItem(title: 'Discount', value: '\$ 0'),
          SizedBox(height: 3),
          OrderInfoItem(title: 'Shipping', value: '\$ 20'),
        ],
      ),
    );
  }
}
