import 'package:flutter/material.dart';
import 'package:instagram_clone_app/config/app_colors.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backGroundColor,
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: AppColors.secondaryColor.withOpacity(.3),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Icon(
                Icons.upload,
                color: AppColors.primaryColor,
                size: 40,
              ),
            ),
          ),
        ));
  }
}
