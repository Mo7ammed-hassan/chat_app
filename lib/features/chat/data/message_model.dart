import 'package:chat_app/core/constants/constants.dart';

class MessageModel {
  final String message;
  final String sendTime;
  final String userId;

  MessageModel({required this.message, required this.userId,required this.sendTime});

  factory MessageModel.fromJson(jsonData) {
    return MessageModel(
      message: jsonData[kMessage],
      sendTime: jsonData[kMessageTime],
      userId: jsonData[kUserId],
    );
  }
}
