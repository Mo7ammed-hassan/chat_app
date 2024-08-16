import 'package:chat_app/core/colors/colors.dart';
import 'package:chat_app/features/auth/register/presentation/views/widgets/register_body.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const bageRoute = 'RegisterView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.scaffoldAuthColor,
      // --BODY--
      body: RegisterBody(),
    );
  }
}
