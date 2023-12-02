import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/user_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  UserAuthRepository _authRepo = UserAuthRepository();
  AuthBloc() : super(AuthInitial()) {
    on<VerifyAuthEvent>(_authVerfication);
    on<RegisterAuthEvent>(_register);
    on<SignOutEvent>(_signOut);
    on<EmailAuthEvent>(_authUserWithEmail);
  }

  FutureOr<void> _authVerfication(event, emit) {
    // inicializar datos de la app
    // revisar si existe usuario autenticado
    if (_authRepo.isAlreadyAuthenticated()) {
      emit(AuthSuccessState());
    } else {
      emit(UnAuthState());
    }
  }

  FutureOr<void> _signOut(event, emit) async {
    //Deslogear usuario
    if(FirebaseAuth.instance.currentUser!.isAnonymous){
      print(FirebaseAuth.instance.currentUser);
      await _authRepo.signOutFirebaseUser();
    }
    emit(SignOutSuccessState());
  }

  FutureOr<void> _register(event, emit) async {
    emit(AuthAwaitingState());
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(AuthSuccessState());
       // Reemplaza la página actual con la MainPage
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      emit(AuthErrorState());
  }
}

  FutureOr<void> _authUserWithEmail(event, emit) async {
    emit(AuthAwaitingState());
    try {
      print('test');
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(AuthSuccessState());
    } on FirebaseAuthException catch (e) {
      emit(AuthErrorState());
    } catch (e) {
      // Puedes agregar un rethrow para propagar la excepción o manejarla de otra manera
      print('Error: $e');
      emit(AuthErrorState()); // Emitir un estado de error en caso de cualquier otra excepción
    }
  }

}