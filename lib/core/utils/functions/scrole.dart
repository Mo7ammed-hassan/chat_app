import 'package:flutter/material.dart';

void scrollingToLastMessage(ScrollController scrollController) {
  scrollController.animateTo(
    0,
    duration: const Duration(microseconds: 5),
    curve: Curves.easeIn,
  );
}
