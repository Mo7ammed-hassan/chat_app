import 'package:chat_app/core/colors/colors.dart';
import 'package:chat_app/core/constants/padding.dart';
import 'package:chat_app/core/utils/functions/key_board_visible.dart';
import 'package:chat_app/features/chat/presentation/manager/cubit/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MicWidget extends StatelessWidget {
  const MicWidget({super.key, required this.chatContext});
  final BuildContext chatContext;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.micColor,
        borderRadius: BorderRadius.circular(
          AppBadding.defaultPaddingChatView * 2,
        ),
      ),
      child: IconButton(
        onPressed: () {
          if (keyBoardVisible(chatContext)) {
            BlocProvider.of<ChatCubit>(context).sendMessages(message: '');
          }
          // --go to last message send--
          BlocProvider.of<ChatCubit>(context).viewLastMessage();
        },
        icon: keyBoardVisible(chatContext)
            ? const Icon(Icons.send)
            : const Icon(Icons.mic),
      ),
    );
  }
}
