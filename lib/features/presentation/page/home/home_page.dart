import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_app/config/app_colors.dart';
import 'package:instagram_clone_app/config/sized_func.dart';
import 'package:instagram_clone_app/consts.dart';
import 'package:instagram_clone_app/features/domain/usecases/firebase_usecases/user/get_current_uid_usecase.dart';
import 'package:unicons/unicons.dart';
import 'package:instagram_clone_app/injection_container.dart' as di;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    di.sl<GetCurrentUidUseCase>().call().then((value) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backGroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backGroundColor,
          title: SvgPicture.asset(
            "assets/ic_instagram.svg",
            color: AppColors.primaryColor,
            height: 32,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    UniconsLine.facebook_messenger_alt,
                    color: AppColors.primaryColor,
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
                            color: AppColors.secondaryColor,
                            shape: BoxShape.circle),
                      ),
                      sizeHor(10),
                      const Text(
                        "Username",
                        style: TextStyle(color: AppColors.primaryColor),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      _showBottomModalSheet(context);
                    },
                    icon: const Icon(
                      Icons.more_vert,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              sizeVer(10),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.30,
                color: AppColors.secondaryColor,
              ),
              sizeVer(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.favorite, color: AppColors.primaryColor),
                      sizeHor(10),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, PageConst.commentPage);
                            //  Navigator.push(context, MaterialPageRoute( builder: (context) => const CommentPage(), ), );
                          },
                          icon: const Icon(Icons.message_rounded,
                              color: AppColors.primaryColor)),
                      sizeHor(10),
                      const Icon(Icons.send_rounded,
                          color: AppColors.primaryColor),
                      sizeHor(10),
                    ],
                  ),
                  const Icon(Icons.bookmark_border,
                      color: AppColors.primaryColor),
                ],
              ),
              sizeVer(10),
              const Text(
                "51 likes",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              sizeVer(10),
              Row(
                children: [
                  const Text(
                    "Username",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  sizeHor(10),
                  const Text(
                    "some description",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              sizeVer(10),
              const Text(
                "View all 10 comments",
                style: TextStyle(
                  color: AppColors.secondaryColor,
                ),
              ),
              sizeVer(10),
              const Text(
                "05/11/2023",
                style: TextStyle(
                  color: AppColors.secondaryColor,
                ),
              )
            ],
          ),
        ));
  }

  _showBottomModalSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 150,
            decoration: BoxDecoration(
              color: AppColors.backGroundColor.withOpacity(.8),
            ),
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        "More Options",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    sizeVer(8),
                    const Divider(
                      thickness: 1,
                      color: AppColors.secondaryColor,
                    ),
                    sizeVer(8),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Delete Post",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    sizeVer(7),
                    const Divider(
                      thickness: 1,
                      color: AppColors.secondaryColor,
                    ),
                    sizeVer(7),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, PageConst.updatePostPage);
                          // Navigator.push( context,MaterialPageRoute( builder: (context) => const UpdatePostPage(),),);
                        },
                        child: const Text(
                          "Update Post",
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
