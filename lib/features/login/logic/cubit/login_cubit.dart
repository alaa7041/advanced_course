import 'dart:developer';

import 'package:flutter/material.dart';

import '../../data/models/login_request_body.dart';
import '../../data/repos/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;

  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitLogin() async {
    log(emailController.text);
    log(passwordController.text);
    emit(const LoginState.loading());
    final response = await loginRepo.login(LoginRequestBody(
        email: emailController.text, password: passwordController.text));

    response.when(success: (data) {
      //await saveUserToken(loginResponse.userData?.token ?? '');
      emit(LoginState.success(data));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
    });
  }

  // Future<void> saveUserToken(String token) async {
  //   await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
  //   DioFactory.setTokenIntoHeaderAfterLogin(token);
  // }
}
