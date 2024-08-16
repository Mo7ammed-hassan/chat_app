import 'package:chat_app/core/colors/colors.dart';
import 'package:chat_app/features/auth/login/presentation/views/widgets/login_body.dart';

import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const bageRoute = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.scaffoldAuthColor,
      // --BODY--
      body: LoginBody(),
    );
  }
}
