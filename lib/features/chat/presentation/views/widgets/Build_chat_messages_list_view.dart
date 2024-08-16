import 'package:chat_app/features/chat/data/message_model.dart';
import 'package:chat_app/features/chat/presentation/manager/cubit/chat_cubit.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/chat_messages_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildChatMessagesListView extends StatelessWidget {
  const BuildChatMessagesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        List<MessageModel> message =
            BlocProvider.of<ChatCubit>(context).mesagesList;
        return ChatMessagesListView(
          message: message,
        );
      },
    );
  }
}
