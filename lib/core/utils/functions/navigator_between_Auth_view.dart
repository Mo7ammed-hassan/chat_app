 import 'package:chat_app/features/auth/login/presentation/views/login_view.dart';
import 'package:chat_app/features/auth/register/presentation/views/register_view.dart';
import 'package:flutter/material.dart';

Future<Future> navigatorBetweenAuthView(
    BuildContext context, {
    required bool loginPage,
  }) async {
    return loginPage
        ? Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RegisterView(),
            ),
          )
        : Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginView(),
            ),
          );
  }