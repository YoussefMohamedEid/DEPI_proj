import 'package:flutter/material.dart';
import 'package:hedaia/constants/constant.dart';
import 'package:hedaia/widgets/post.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hedaia",
                style: TextStyle(
                    color: kSecondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 21),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.logout))
            ],
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (c, i) {
                return Padding(
                  padding: const EdgeInsets.only(top: 36),
                  child: PostWidget(),
                );
              }),
        ],
      ),
    );
  }
}
