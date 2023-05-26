import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
TextEditingController emailController=TextEditingController();
TextEditingController passController=TextEditingController();
TextEditingController nameController=TextEditingController();
bool _isPasswordVisible = false;
  AuthBloc() : super(AuthInitial()) {
    Stream<AuthState> mapEventToState(AuthEvent event) async* {
      if (event is TogglePasswordVisibility) {
        _isPasswordVisible = !_isPasswordVisible;
        yield _isPasswordVisible ? PasswordVisible() : AuthInitial();
      }
    }
    /*on<AuthEvent>((event, emit) {
      if (event is TogglePasswordVisibility) {

      }
    });*/
  }
}
