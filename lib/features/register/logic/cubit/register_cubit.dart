import 'package:advanced_course/features/register/data/models/register_request_body.dart';
import 'package:advanced_course/features/register/data/repositories/register_repo.dart';
import 'package:advanced_course/features/register/logic/cubit/register_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


class RegisterCubit extends Cubit<RegisterState> {


  RegisterCubit(this.registerRepo) : super(const RegisterState.initial());

  final RegisterRepo registerRepo;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
  TextEditingController();
  final formKey = GlobalKey<FormState>();

void emitRegisterStates() async {
    emit(const RegisterState.loading());

    final response = await registerRepo.register(
      RegisterRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: "0",
      ),
    );
    response.when(success: (registerResponse) {
      emit(RegisterState.success(registerResponse));
    }, failure: (error) {
      emit(RegisterState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

}
