import 'package:chat_app/core/styles/text_style.dart';
import 'package:flutter/material.dart';

class TitleAndScholarImage extends StatelessWidget {
  const TitleAndScholarImage({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/scholar.png',
        ),
        const SizedBox(height: 8),
        const Text(
          'Scholar Chat',
          style: TextStyleApp.fontSize22,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.07),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyleApp.fontSize20,
          ),
        ),
      ],
    );
  }
}
