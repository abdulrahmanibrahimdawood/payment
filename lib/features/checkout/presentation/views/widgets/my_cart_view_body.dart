import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:payment/features/checkout/presentation/views/widgets/total_price_widget.dart';

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
          Divider(height: 34, thickness: 2, color: Color(0xffC7C7C7)),
          TotalPrice(title: 'Total', value: '\$1,020'),
          Spacer(),
          CustomButton(),
          SizedBox(height: 84),
        ],
      ),
    );
  }
}
