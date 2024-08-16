// import 'package:bloc/bloc.dart';
// import 'package:chat_app/features/auth/auth_services/auth_services.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:meta/meta.dart';

// part 'register_state.dart';

// class RegisterCubit extends Cubit<RegisterState> {
//   RegisterCubit(this.authServices) : super(RegisterInitial());
//   final AuthServices authServices;

//   // SignUP Methods
//   void createUserAccount({required String email, required String password}) {
//     emit(RegisterLoading());
//     try {
//       authServices.registerMethod(email: email, password: password);
//       emit(RegisterSuccess(succesMessage: 'success register'));
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         emit(
//           RegisterFailure(failureMessage: 'The password provided is too weak.'),
//         );
//       } else if (e.code == 'email-already-in-use') {
//         emit(
//           RegisterFailure(
//               failureMessage: 'The account already exists for that email.'),
//         );
//       }
//     } catch (e) {
//       emit(
//         RegisterFailure(
//             failureMessage: 'there was an error please try agein later..'),
//       );
//     }
//   }
// }
