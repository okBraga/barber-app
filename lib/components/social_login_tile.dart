import 'package:flutter/material.dart';

class SocialLoginTile extends StatelessWidget {
  final String imagePath;
  final Function()? onTap;

  const SocialLoginTile({super.key, required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: true,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        // child: Image.asset(
        //   imagePath,
        //   height: 40,
        // ),
      ),
    );
  }
}
