import 'package:flutter/material.dart';
import 'package:instagram_clone_app/consts.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          backgroundColor: backGroundColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: primaryColor),
          ),
          title: const Text(
            "Comments",
            style: TextStyle(color: primaryColor),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: secondaryColor, shape: BoxShape.circle),
                ),
                sizeHor(15),
                const Text(
                  "Username",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            sizeVer(10),
            const Text(
              "This is vey beautiful place",
              style: TextStyle(color: primaryColor),
            ),
            sizeVer(10),
            const Divider(
              color: secondaryColor,
            ),
            sizeVer(10),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: secondaryColor, shape: BoxShape.circle),
                ),
                sizeHor(10),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Username",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.favorite_outline, color: primaryColor),
                          ],
                        ),
                        Text(
                          "This is comment",
                          style: TextStyle(color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ]),
        ));
  }
}
