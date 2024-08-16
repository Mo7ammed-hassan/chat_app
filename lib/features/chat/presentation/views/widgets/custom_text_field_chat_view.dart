import 'package:chat_app/core/colors/colors.dart';
import 'package:chat_app/core/constants/padding.dart';
import 'package:chat_app/core/styles/text_style.dart';
import 'package:chat_app/features/chat/presentation/manager/cubit/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextFiledChatView extends StatelessWidget {
  const CustomTextFiledChatView({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        textInputAction: TextInputAction.send,
        controller: controller,
        onSubmitted: (userMessage) {
          // --active cubit .. '' request ''--.
          BlocProvider.of<ChatCubit>(context)
              .sendMessages(message: userMessage);

          // --clear textFiled after send message--
          controller!.clear();

          // --scrolling to last message--
          BlocProvider.of<ChatCubit>(context).viewLastMessage();
        },
        onEditingComplete: () {}, // --not closed keyboard--
        style: const TextStyle(color: Colors.white),
        cursorColor: AppColor.userBublleChatColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColor.scaffoldAuthColor,
          hintText: 'Message',
          hintStyle: TextStyleApp.chatFontSizeTextField16,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppBadding.viewBadding,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                AppBadding.defaultPaddingChatView * 2,
              ),
            ),
          ),
          prefixIcon: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions,
              color: Colors.grey,
            ),
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(
                  Icons.attach_file,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
