import 'package:chat_app/core/constants/padding.dart';
import 'package:flutter/material.dart';

OutlineInputBorder textFieldBorderFun({required bool isFocused}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppBadding.defaultBorderRaduis),
    borderSide: BorderSide(color: isFocused ? Colors.orange : Colors.grey),
  );
}
