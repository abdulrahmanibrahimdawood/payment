import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart' show Cubit, Change;
import 'package:meta/meta.dart';
import 'package:payment/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment/features/checkout/data/repo/check_out_repo.dart';

part 'stripe_payment_state.dart';

class StripePaymentCubit extends Cubit<StripePaymentState> {
  StripePaymentCubit(this.checkoutRepo) : super(StripePaymentInitial());
  final CheckoutRepo checkoutRepo;

  Future makePayment(PaymentIntentInputModel paymentIntentInputModel) async {
    emit(StripePaymentLoading());
    var data = await checkoutRepo.makePayment(
      paymentIntentInputModel: paymentIntentInputModel,
    );
    data.fold(
      (l) {
        emit(StripePaymentFailure(errMessage: l.errMessage));
      },
      (r) {
        emit(StripePaymentSuccess());
      },
    );

    @override
    void onChange(Change<StripePaymentState> change) {
      log(change.toString());
      print(change);
    }
  }
}
