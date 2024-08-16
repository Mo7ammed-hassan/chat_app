import 'package:chat_app/features/chat/presentation/views/widgets/Build_chat_messages_list_view.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/custom_text_filed_and_mic.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key, required this.chatContext});
  final BuildContext chatContext;
  @override
  Widget build(BuildContext context) {
    // provied cubit but lazy..

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 6),
      child: Column(
        children: [
          // --Chat messages List View--
          const BuildChatMessagesListView(),
          // --TextFiled and Recording mic--
          CustomTextFiledAndMic(chatContext: chatContext),
        ],
      ),
    );
  }
}
