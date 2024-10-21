import 'package:flutter/material.dart';
import 'package:hedaia/constants/constant.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                    "https://www.pngall.com/wp-content/uploads/5/Profile-PNG-Image.png"),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Name of user here",
                style: TextStyle(color: kSecondaryColor, fontSize: 14),
              ),
              Expanded(child: SizedBox()),
              Text(
                "Time",
                style: TextStyle(fontSize: 8),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text("description for the photo:"),
          Image(
              width: double.infinity,
              height: h * 0.4,
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://static.startuptalky.com/2021/05/Instagram-Business-Account-StartupTalky.jpg",
              )),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
              SizedBox(
                height: 8,
              ),
              Text(
                "280 likes",
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                height: 16,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
              SizedBox(
                height: 8,
              ),
              Text("18 comments", style: TextStyle(fontSize: 10)),
              SizedBox(
                height: 16,
              ),
              Expanded(child: SizedBox()),
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            ],
          )
        ],
      ),
    );
  }
}
