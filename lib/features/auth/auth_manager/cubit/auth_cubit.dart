import 'package:bloc/bloc.dart';
import 'package:chat_app/features/auth/auth_services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authServices) : super(AuthInitial());

  final AuthServices authServices;
  String? email, password;
  // SignUP User..
  void createUserAccount() async {
    emit(AuthLoading());
    try {
      await authServices.registerMethod(email: email!, password: password!);
      emit(RegisterSuccess(successMessage: 'success register', email: email!));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          AuthFailuer(failureMessage: 'The password provided is too weak.'),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(
          AuthFailuer(
              failureMessage: 'The account already exists for that email.'),
        );
      }
    } catch (e) {
      emit(
        AuthFailuer(
            failureMessage: 'there was an error, please try agein later..'),
      );
    }
  }

  // login User..
  void loginUserAccount() async {
    emit(AuthLoading());
    try {
      await authServices.loginMethod(email: email!, password: password!);
      emit(
        LoginSuccess(successMessage: 'login success', email: email!),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(
          AuthFailuer(failureMessage: 'No user found for that email.'),
        );
      } else if (e.code == 'wrong-password') {
        emit(
          AuthFailuer(failureMessage: 'Wrong password provided for that user.'),
        );
      }
    } catch (e) {
      emit(
        AuthFailuer(
            failureMessage: 'there was an error, please try agein later..'),
      );
    }
  }

  // sign out..
  void signOut() async {
    await authServices.signOut();
  }
}
