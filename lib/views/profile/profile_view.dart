import 'package:flutter/material.dart';
import 'package:hedaia/constants/constant.dart';
import 'package:hedaia/widgets/customm_button.dart';
import 'package:hedaia/widgets/profile_with_edit_circle.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: h * 0.03,
                ),
                ProfileWithEditCircle(
                  raduis: 50,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "His name",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "the email",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                CustommButton(
                  ButtonHint: "Upload new photo",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 42,
                ),
                CustomProfileButton(
                  hintButton: "Privecy",
                  icon: Icons.privacy_tip,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomProfileButton(
                  hintButton: "Settings",
                  icon: Icons.settings_suggest_outlined,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomProfileButton(
                  hintButton: "Logout",
                  icon: Icons.logout,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
