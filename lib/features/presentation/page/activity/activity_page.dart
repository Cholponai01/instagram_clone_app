import 'package:flutter/material.dart';
import 'package:instagram_clone_app/config/app_colors.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backGroundColor,
        title: const Text(
          "Activity",
          style: TextStyle(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
