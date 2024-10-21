import 'package:flutter/material.dart';
import 'package:hedaia/constants/constant.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField(
      {super.key, this.validatorText, required this.hintText,this.secure=false,this.suffix});
  @override
  final String? validatorText;
  final String hintText;
  final bool secure;
  Widget? suffix;
  Widget build(BuildContext context) {
    return TextFormField(
      
      obscureText:secure ,
      validator: (value) {
        if (value!.isEmpty) {
          return validatorText;
        }
      },
      decoration: InputDecoration(
        suffixIcon:suffix ,
        counterStyle: TextStyle(color: kSecondaryColor),
        hintText: hintText,
        
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
          borderRadius: new BorderRadius.circular(25.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: new BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
