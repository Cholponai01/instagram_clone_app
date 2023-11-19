import 'package:flutter/material.dart';
import 'package:instagram_clone_app/config/app_colors.dart';

class ButtonContainerWidget extends StatelessWidget {
  final Color? color;
  final String? text;
  final VoidCallback? onTapListener;
  const ButtonContainerWidget(
      {super.key, this.color, this.text, this.onTapListener});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTapListener,
        child: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(3),
          ),
          child: Center(
            child: Text(
              "$text",
              style: const TextStyle(
                  color: AppColors.primaryColor, fontWeight: FontWeight.w600),
            ),
          ),
        ));
  }
}
