import 'package:chat_app/core/utils/widgets/custom_eleveted_button.dart';
import 'package:chat_app/core/utils/widgets/custom_text_form_filed.dart';
import 'package:chat_app/features/auth/auth_manager/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomFormValidation extends StatelessWidget {
  const CustomFormValidation({
    super.key,
    required this.formKey,
    required this.buttonTitle,
  });
  final String buttonTitle;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormFiled(
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            suffixIcon: const Icon(Icons.email),
            onChange: (value) {
              BlocProvider.of<AuthCubit>(context).email = value.trim();
            },
          ),
          CustomTextFormFiled(
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            suffixIcon: const Icon(Icons.key),
            onChange: (value) {
              BlocProvider.of<AuthCubit>(context).password = value.trim();
            },
          ),
          CustomElevetedButton(
            buttonTitle: buttonTitle,
            formKey: formKey,
          ),
        ],
      ),
    );
  }
}
