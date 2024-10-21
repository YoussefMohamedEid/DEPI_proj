import 'package:flutter/material.dart';
import 'package:hedaia/widgets/customm_button.dart';

class ViewToChooseLoginSignup extends StatelessWidget {
  const ViewToChooseLoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustommButton(
              ButtonHint: "Log in",
              onPressed: () {},
            ),
            SizedBox(
              height: 16,
            ),
            CustommButton(
              ButtonHint: "Sign up",
              onPressed: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
