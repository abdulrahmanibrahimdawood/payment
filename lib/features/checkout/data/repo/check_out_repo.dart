import 'package:dartz/dartz.dart';
import 'package:payment/core/utils/errors/failure.dart';
import 'package:payment/features/checkout/data/models/payment_intent_input_model.dart';

abstract class CheckOutRepo {
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  });
}
