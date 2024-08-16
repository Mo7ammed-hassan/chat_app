import 'package:chat_app/core/constants/padding.dart';
import 'package:chat_app/core/styles/text_style.dart';
import 'package:chat_app/features/auth/auth_manager/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomElevetedButton extends StatelessWidget {
  const CustomElevetedButton({
    super.key,
    required this.buttonTitle,
    required this.formKey,
  });
  final String buttonTitle;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppBadding.customButtonPadding),
      child: SizedBox(
        width: 150,
        child: ElevatedButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              // but here logic ..
              if (buttonTitle == 'Register') {
                // but here Register method
                // trigger cubit
                BlocProvider.of<AuthCubit>(context).createUserAccount();
              } else if (buttonTitle == 'Login') {
                // but here login method
                //  trigger cubit
                BlocProvider.of<AuthCubit>(context).loginUserAccount();
              }
            }
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(5),
            elevation: 2,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          // TODO: Done..
          child: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              if (state is AuthLoading) {
                return const CircularProgressIndicator();
              }
              return Text(
                buttonTitle,
                style: TextStyleApp.fontSize18,
              );
            },
          ),
        ),
      ),
    );
  }
}
