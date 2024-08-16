part of 'chat_cubit.dart';

sealed class ChatState {}

final class ChatInitial extends ChatState {}

final class SendMessageSuccess extends ChatState {}

class GetMessagesSuccess extends ChatState {
  List<MessageModel> messageModel = [];

  GetMessagesSuccess({required this.messageModel});
}
