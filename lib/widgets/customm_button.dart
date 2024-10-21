import 'package:flutter/material.dart';
import 'package:hedaia/constants/constant.dart';
import 'package:hedaia/constants/font_abstract.dart';

class CustommButton extends StatelessWidget {
  CustommButton(
      {super.key,
      required this.ButtonHint,
      required this.onPressed,
      this.fontSize = 12});

  @override
  void Function()? onPressed;
  String ButtonHint;
  double fontSize;
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            padding: EdgeInsets.symmetric(horizontal: 18),
            textStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: kThirdColor)),
        onPressed: onPressed,
        child: Text(ButtonHint,
            style: TextStyle(color: kThirdColor, fontSize: fontSize)));
  }
}

class CustomProfileButton extends StatelessWidget {
  CustomProfileButton(
      {super.key, required this.hintButton, required this.icon});

  @override
  String hintButton;
  IconData icon;
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kSecondaryColor, borderRadius: BorderRadius.circular(25)),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      child: Row(
        children: [
          Icon(
            icon,
            color: kThirdColor,
          ),
          SizedBox(width: 16),
          Text(
            hintButton,
            style: AppStyles.styleForsmallButton(context),
          ),
          Expanded(child: SizedBox()),
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 20,
          )
        ],
      ),
    );
  }
}
