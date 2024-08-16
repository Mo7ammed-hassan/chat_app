// ignore_for_file: avoid_print
import 'package:chat_app/core/constants/constants.dart';
import 'package:chat_app/core/utils/functions/scrole.dart';
import 'package:chat_app/features/chat/data/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessageCollection);
  String? email;
  ScrollController? scrollController;
  // send doc to collection and but in doc data..
  void sendMessages({required String message}) {
    try {
      messages.add({
        kMessage: message,
        kMessageTime: DateTime.now().toString(),
        kUserId: email,
      });
      emit(SendMessageSuccess());
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  // get data of collection from data base..
  List<MessageModel> mesagesList = [];
  void getMessages() {
    messages.orderBy(kMessageTime, descending: true).snapshots().listen(
      (event) {
        mesagesList.clear();
        for (var message in event.docs) {
          mesagesList.add(MessageModel.fromJson(message));
        }
        emit(
          GetMessagesSuccess(messageModel: mesagesList),
        );
        //print('WEEEEEE AREEEEEEEEE HERRRRE');
      },
    );
  }

  void viewLastMessage() {
    scrollingToLastMessage(scrollController!);
  }
}
