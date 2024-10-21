import 'package:flutter/material.dart';
import 'package:hedaia/constants/constant.dart';
import 'package:hedaia/views/layouts/layout_view.dart';
import 'package:hedaia/views/registeration/signup_view.dart';
import 'package:hedaia/widgets/custom_text_form_field.dart';
import 'package:hedaia/widgets/customm_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  @override
  bool securePassword = true;
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Text(
                    "Log in",
                    style: TextStyle(color: kSecondaryColor),
                  ),
                  Form(
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.1,
                        ),
                        CustomTextFormField(
                          hintText: "Email",
                          validatorText: "please put the email",
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        CustomTextFormField(
                          hintText: "Password",
                          validatorText: "please put the password",
                          secure: securePassword,
                          suffix: IconButton(
                              onPressed: () {
                                securePassword = !securePassword;
                                setState(() {});
                              },
                              icon: securePassword
                                  ? Icon(Icons.remove_red_eye_rounded)
                                  : Icon(Icons.remove_red_eye_outlined)),
                        ),
                      ],
                    ),
                    key: formKey,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: CustommButton(
                        ButtonHint: "Log in",
                        onPressed: () {
                          formKey.currentState!.save();
                          if (formKey.currentState!.validate()) {
                            //sign up code;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LayoutView()),
                            );
                          }
                        },
                      )),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child:
                        CustommButton(onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpView()),
                            );
                        }, ButtonHint: "Sign up"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
