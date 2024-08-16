import 'package:chat_app/core/styles/text_style.dart';
import 'package:chat_app/core/utils/functions/navigator_between_Auth_view.dart';
import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({
    super.key,
    //required this.loginOrRegister,
    required this.loginPage,
  });
  //final String loginOrRegister;
  final bool loginPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          loginPage ? 'don\'t have an account?' : 'Already have an account?',
          style: TextStyleApp.fontSize15.copyWith(color: Colors.grey),
        ),
        TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 5),
            ),
          ),
          onPressed: () {
            navigatorBetweenAuthView(loginPage: loginPage, context);
          },
          child: Text(
            //loginOrRegister,
            loginPage ? 'Register' : 'Login',
            style: TextStyleApp.fontSize15,
          ),
        )
      ],
    );
  }
}
