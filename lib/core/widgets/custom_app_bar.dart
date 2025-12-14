import 'package:flutter/material.dart';
import 'package:payment/core/styles/text_styles.dart';

AppBar buildAppBAr({required final String title}) {
  return AppBar(
    centerTitle: true,
    title: Text(title, style: TextStyles.style25),
    leading: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
  );
}
