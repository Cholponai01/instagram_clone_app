import 'package:flutter/material.dart';
import 'package:instagram_clone_app/consts.dart';
import 'package:instagram_clone_app/features/presentation/page/profile/widget/profile_form_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          backgroundColor: backGroundColor,
          title: const Text(
            "Edit Profile",
            style: TextStyle(color: primaryColor),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: primaryColor,
              size: 32,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.done,
                color: blueColor,
                size: 32,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ),
                sizeVer(15),
                const Center(
                  child: Text(
                    "Change profile photo",
                    style: TextStyle(
                        color: blueColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                sizeVer(15),
                const ProfileFormWidget(
                  title: "Name",
                ),
                sizeVer(15),
                const ProfileFormWidget(
                  title: "Username",
                ),
                sizeVer(15),
                const ProfileFormWidget(
                  title: "Website",
                ),
                sizeVer(15),
                const ProfileFormWidget(
                  title: "Bio",
                ),
              ],
            ),
          ),
        ));
  }
}
