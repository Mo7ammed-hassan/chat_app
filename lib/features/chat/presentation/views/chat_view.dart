import 'package:chat_app/features/chat/presentation/views/widgets/chat_body.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/custom_chat_app_bar.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});
  static String kChatRoute = 'ChatView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --custom AppBar--
      appBar: customChatAppBar(context),
      // -- chat body--
      body: ChatBody(chatContext: context),
    );
  }
}
