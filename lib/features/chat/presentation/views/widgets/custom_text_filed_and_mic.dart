import 'package:chat_app/features/chat/presentation/views/widgets/custom_text_field_chat_view.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/mic_widget.dart';
import 'package:flutter/material.dart';

class CustomTextFiledAndMic extends StatelessWidget {
  const CustomTextFiledAndMic({
    super.key,
    required this.chatContext,
  });

  final BuildContext chatContext;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      color: Colors.transparent,
      child: Row(
        children: [
          // text filed to send data
          CustomTextFiledChatView(
            controller: TextEditingController(),
          ),
          // space
          const SizedBox(width: 7),
          // mic to recording audio
          MicWidget(
            chatContext: chatContext,
          ),
        ],
      ),
    );
  }
}
