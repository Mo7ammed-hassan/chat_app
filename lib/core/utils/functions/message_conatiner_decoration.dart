 import 'package:chat_app/core/colors/colors.dart';
import 'package:chat_app/core/constants/padding.dart';
import 'package:flutter/material.dart';

BoxDecoration messageContainerDecoration({required bool userBublle}) {
    return BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(
              AppBadding.defaultBorderRaduisChatView,
            ),
            topRight: const Radius.circular(
              AppBadding.defaultBorderRaduisChatView,
            ),
            bottomRight: userBublle
                ? const Radius.circular(
                    AppBadding.defaultBorderRaduisChatView,
                  )
                : const Radius.circular(
                    0,
                  ),
            bottomLeft: userBublle
                ? const Radius.circular(
                    0,
                  )
                : const Radius.circular(
                    AppBadding.defaultBorderRaduisChatView,
                  ),
          ),
          color: userBublle
              ? AppColor.userBublleChatColor
              : AppColor.frindBublleChatColor,
        );
  }