import 'package:chat_app/core/colors/colors.dart';
import 'package:chat_app/core/constants/padding.dart';
import 'package:chat_app/core/styles/text_style.dart';
import 'package:chat_app/core/utils/functions/message_conatiner_decoration.dart';
import 'package:chat_app/features/chat/data/message_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatBublle extends StatelessWidget {
  const ChatBublle({
    super.key,
    required this.userBublle,
    required this.messageModel,
  });

  final bool userBublle;
  final MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: userBublle
          ? const EdgeInsets.only(right: 35)
          : const EdgeInsets.only(left: 35),
      child: Align(
        alignment: userBublle ? Alignment.centerLeft : Alignment.centerRight,
        child: Container(
          padding: const EdgeInsets.all(AppBadding.viewBadding),
          margin: const EdgeInsets.only(
            bottom: AppBadding.chatBublleBading,
          ),
          decoration: messageContainerDecoration(userBublle: userBublle),
          child: Column(
            crossAxisAlignment:
                userBublle ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              // Display Message
              Text(
                messageModel.message,
                style: TextStyleApp.fontSize15
                    .copyWith(fontWeight: FontWeight.normal),
              ),
              // Display Date..
              Text(
                DateFormat.jm().format(
                  DateTime.parse(messageModel.sendTime),
                ),
                style: TextStyleApp.fontSize14.copyWith(
                  color: AppColor.timeColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
