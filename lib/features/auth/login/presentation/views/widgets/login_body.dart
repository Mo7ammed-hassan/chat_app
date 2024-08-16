import 'package:chat_app/core/constants/padding.dart';
import 'package:chat_app/core/utils/functions/show_snak_bar.dart';
import 'package:chat_app/core/utils/widgets/custom_form_validation.dart';
import 'package:chat_app/core/utils/widgets/have_an_account.dart';
import 'package:chat_app/core/utils/widgets/title_and_scholar_image.dart';
import 'package:chat_app/features/auth/auth_manager/cubit/auth_cubit.dart';
import 'package:chat_app/features/chat/presentation/manager/cubit/chat_cubit.dart';
import 'package:chat_app/features/chat/presentation/views/chat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          // Trigger method first..
          // get messages after user login before view screen..
          BlocProvider.of<ChatCubit>(context).email = state.email;
          BlocProvider.of<ChatCubit>(context).getMessages();
          Navigator.pushNamed(
            context,
            ChatView.kChatRoute,
          );
        } else if (state is AuthFailuer) {
          showSnakBar(context, message: state.failureMessage);
        }
      },
      builder: (context, state) {
        return Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppBadding.viewBadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image and title of page
              const TitleAndScholarImage(title: 'LOGIN'),
              // form vaildation and botton
              CustomFormValidation(
                formKey: GlobalKey(),
                buttonTitle: 'Login',
              ),
              // check have account or not
              const HaveAnAccount(loginPage: true),
            ],
          ),
        );
      },
    );
  }
}
