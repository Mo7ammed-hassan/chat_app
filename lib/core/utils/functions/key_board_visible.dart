import 'package:flutter/material.dart';

bool keyBoardVisible(BuildContext chatContext) {
  if (MediaQuery.of(chatContext).viewInsets.bottom == 0) {
    // --hidden--
    return false;
  } else {
    // --appper--
    return true;
  }
}