import 'package:flutter/material.dart';
import 'package:hedaia/constants/constant.dart';
import 'package:hedaia/views/layouts/layout_view.dart';
import 'package:hedaia/views/registeration/login_view.dart';
import 'package:hedaia/widgets/custom_text_form_field.dart';
import 'package:hedaia/widgets/customm_button.dart';
import 'package:hedaia/widgets/profile_with_edit_circle.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final formKey = GlobalKey<FormState>();
  @override
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
                    "Sign up",
                    style: TextStyle(color: kSecondaryColor),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  ProfileWithEditCircle(raduis: 30,icon: Icons.upload,),
                  Form(
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.05,
                        ),
                        CustomTextFormField(
                          hintText: "Your name",
                          validatorText: "please put the name",
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        CustomTextFormField(
                          hintText: "email",
                          validatorText: "please put the email",
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        CustomTextFormField(
                          hintText: "password",
                          validatorText:
                              "please put the length more than 7 ch.",
                        )
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
                      ButtonHint: "Sign up",
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
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginView()),
                            );
                        }, child: const Text("Log in")),
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
