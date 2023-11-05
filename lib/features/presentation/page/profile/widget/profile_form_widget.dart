import 'package:flutter/material.dart';
import 'package:instagram_clone_app/consts.dart';

class ProfileFormWidget extends StatelessWidget {
  const ProfileFormWidget({super.key, this.controller, this.title});

  final TextEditingController? controller;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title",
          style: const TextStyle(color: primaryColor, fontSize: 16),
        ),
        sizeVer(10),
        TextFormField(
          style: const TextStyle(color: primaryColor),
          decoration: const InputDecoration(
            border: InputBorder.none,
            labelStyle: TextStyle(color: primaryColor),
          ),
        ),
        Container(width: double.infinity, height: 1, color: secondaryColor)
      ],
    );
  }
}
