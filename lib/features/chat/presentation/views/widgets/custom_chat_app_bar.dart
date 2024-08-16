 import 'package:chat_app/core/colors/colors.dart';
import 'package:chat_app/core/constants/padding.dart';
import 'package:chat_app/core/styles/text_style.dart';
import 'package:flutter/material.dart';

AppBar customChatAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.scaffoldAuthColor,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
              const CircleAvatar(
                maxRadius: 21,
                backgroundImage: AssetImage('assets/images/scholar.png'),
              ),
              const SizedBox(width: AppBadding.viewBadding),
              Text(
                'Mohamed hassan',
                style: TextStyleApp.fontSize18.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        )
      ],
    );
  }
