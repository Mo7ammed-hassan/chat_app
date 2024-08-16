import 'package:chat_app/features/auth/auth_manager/cubit/auth_cubit.dart';
import 'package:chat_app/features/chat/data/message_model.dart';
import 'package:chat_app/features/chat/presentation/manager/cubit/chat_cubit.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/chat_bublle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatMessagesListView extends StatefulWidget {
  const ChatMessagesListView({
    super.key,
    required this.message,
  });
  final List<MessageModel> message;

  @override
  State<ChatMessagesListView> createState() => _ChatMessagesListViewState();
}

class _ChatMessagesListViewState extends State<ChatMessagesListView> {
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ChatCubit>(context).scrollController = _controller;
    return Expanded(
      child: ListView.builder(
        controller: _controller,
        reverse: true,
        itemCount: widget.message.length,
        itemBuilder: (context, index) => ChatBublle(
          // --send data of message--
          messageModel: widget.message[index],
          // --check user or frind--
          userBublle: widget.message[index].userId ==
                  BlocProvider.of<AuthCubit>(context).email
              ? true
              : false,
        ),
      ),
    );
  }
}

/*
if (state is GetMessagesSuccess) {
            return ListView.builder(
              itemCount: state.messageModel.length,
              itemBuilder: (context, index) => ChatBublle(
                messageModel: state.messageModel[index],
                // TODO:: We are here..
                userBublle: state.messageModel[index].userId ==
          BlocProvider.of<AuthCubit>(context).email
         ? true
        : false,
    ),
  );
} */