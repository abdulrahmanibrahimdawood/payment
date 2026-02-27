import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/utils/api_keys.dart';
import 'package:payment/features/checkout/presentation/views/my_cart_view.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const CheckOutApp());
}

class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyCartView());
  }
}

// ==============   If you apply these steps, the flow will be better than before   ===============
// PaymentIntentModel createPaymentIntent( amount, currency , customerId)
// keySecrit createEphemeralKey( customerId)
// InitPaymentSheet( merchantDisplayName, paymentIntentClientSecret, ephemeralKeySecret)
// presentPaymentSheet()
