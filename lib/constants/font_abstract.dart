import 'package:flutter/material.dart';
import 'package:hedaia/constants/constant.dart';

abstract class AppStyles {
  static TextStyle styleForBigButton(context) {
    return TextStyle(
        color: kThirdColor, fontSize: 22, fontWeight: FontWeight.bold);
  }

  static TextStyle styleForsmallButton(context) {
    return TextStyle(
        color: kThirdColor, fontSize: 12, fontWeight: FontWeight.bold);
  }
}
