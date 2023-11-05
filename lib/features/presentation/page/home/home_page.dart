import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_app/consts.dart';
import 'package:instagram_clone_app/features/presentation/page/post/comment/comment_page.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          backgroundColor: backGroundColor,
          title: SvgPicture.asset(
            "assets/ic_instagram.svg",
            color: primaryColor,
            height: 32,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    UniconsLine.facebook_messenger_alt,
                    color: primaryColor,
                  )),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                            color: secondaryColor, shape: BoxShape.circle),
                      ),
                      sizeHor(10),
                      const Text(
                        "Username",
                        style: TextStyle(color: primaryColor),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: primaryColor,
                  )
                ],
              ),
              sizeVer(10),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.30,
                color: secondaryColor,
              ),
              sizeVer(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.favorite, color: primaryColor),
                      sizeHor(10),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CommentPage(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.message_rounded,
                              color: primaryColor)),
                      sizeHor(10),
                      const Icon(Icons.send_rounded, color: primaryColor),
                      sizeHor(10),
                    ],
                  ),
                  const Icon(Icons.bookmark_border, color: primaryColor),
                ],
              ),
              sizeVer(10),
              const Text(
                "51 likes",
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              sizeVer(10),
              Row(
                children: [
                  const Text(
                    "Username",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  sizeHor(10),
                  const Text(
                    "some description",
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              sizeVer(10),
              const Text(
                "View all 10 comments",
                style: TextStyle(
                  color: secondaryColor,
                ),
              ),
              sizeVer(10),
              const Text(
                "05/11/2023",
                style: TextStyle(
                  color: secondaryColor,
                ),
              )
            ],
          ),
        ));
  }
}
