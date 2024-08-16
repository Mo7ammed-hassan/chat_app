import 'package:chat_app/core/colors/colors.dart';
import 'package:chat_app/core/constants/padding.dart';
import 'package:chat_app/core/styles/text_style.dart';
import 'package:flutter/material.dart';

showSnakBar(BuildContext context, {required String message}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      padding: const EdgeInsets.all(AppBadding.viewBadding / 2),
      backgroundColor: AppColor.scaffoldColor,
      content: Text(
        message,
        style: TextStyleApp.fontSize15,
      ),
    ),
  );
}
