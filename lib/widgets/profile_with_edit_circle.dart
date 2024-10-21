import 'package:flutter/material.dart';
import 'package:hedaia/constants/constant.dart';

class ProfileWithEditCircle extends StatelessWidget {
  ProfileWithEditCircle({super.key, required this.raduis,this.icon=Icons.edit});

  @override
  double raduis;
  IconData icon;
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: raduis,
          backgroundImage: NetworkImage(
              "https://www.pngall.com/wp-content/uploads/5/Profile-PNG-Image.png"),
          backgroundColor: Colors.white,
        ),
        Positioned(
            bottom: 1,
            right: 1,
            child: CircleAvatar(
              radius: raduis * 0.4,
              backgroundColor: kPrimaryColor,
              child: IconButton(
                  iconSize: raduis * 0.3,
                  onPressed: () {},
                  icon:  Icon(
                    icon,
                    color: Colors.white,
                  )),
            ))
      ],
    );
  }
}
