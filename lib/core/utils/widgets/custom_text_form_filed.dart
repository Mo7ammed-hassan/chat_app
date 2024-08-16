import 'package:chat_app/core/constants/padding.dart';
import 'package:chat_app/core/styles/text_style.dart';
import 'package:chat_app/core/utils/functions/text_field_border.dart';
import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    required this.hintText,
    required this.keyboardType,
    required this.obscureText,
    required this.suffixIcon,
    required this.onChange,
  });
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final Icon suffixIcon;
  final Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppBadding.viewBadding),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Plese fields required';
          }
          return null;
        },
        onChanged: onChange,
        onSaved: (newValue) {
          //to save last data
        },
        keyboardType: keyboardType,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyleApp.fontSize14,
          suffixIcon: obscureText
              ? IconButton(
                  onPressed: () {},
                  icon: suffixIcon,
                )
              : suffixIcon,
          suffixIconColor: Colors.white,
          enabledBorder: textFieldBorderFun(isFocused: false),
          focusedBorder: textFieldBorderFun(isFocused: true),
        ),
      ),
    );
  }
}
