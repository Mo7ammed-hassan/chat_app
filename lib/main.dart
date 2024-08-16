import 'package:chat_app/core/colors/colors.dart';
import 'package:chat_app/features/auth/auth_manager/cubit/auth_cubit.dart';
import 'package:chat_app/features/auth/auth_services/auth_services.dart';
import 'package:chat_app/features/auth/login/presentation/views/login_view.dart';
import 'package:chat_app/features/auth/register/presentation/views/register_view.dart';
import 'package:chat_app/features/chat/presentation/manager/cubit/chat_cubit.dart';
import 'package:chat_app/features/chat/presentation/views/chat_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    // provid cubit but it's lazy..
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(
            AuthServices(firebaseAuth: FirebaseAuth.instance),
          ),
        ),
        BlocProvider(
          create: (context) => ChatCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          iconButtonTheme: const IconButtonThemeData(
            style: ButtonStyle(
              iconColor: MaterialStatePropertyAll(Colors.white),
            ),
          ),
          scaffoldBackgroundColor: AppColor.scaffoldColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //useMaterial3: true,
        ),
        initialRoute: LoginView.bageRoute,
        routes: {
          RegisterView.bageRoute: (context) => const RegisterView(),
          LoginView.bageRoute: (context) => const LoginView(),
          ChatView.kChatRoute: (context) => const ChatView(),
        },
      ),
    );
  }
}
