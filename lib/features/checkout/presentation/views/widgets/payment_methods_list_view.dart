import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethods = const [
    'assets/images/card.svg',
    'assets/images/paypal.svg',
    'assets/images/apple_pay.svg',
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: paymentMethods.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: PaymentMethodItem(
              image: paymentMethods[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
