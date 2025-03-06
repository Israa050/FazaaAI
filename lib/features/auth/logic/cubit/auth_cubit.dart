import 'package:flutter/material.dart';
import 'package:salam_hack/core/models/user.dart';
import 'package:salam_hack/features/auth/data/repo/auth_repository.dart';
import 'package:salam_hack/features/auth/logic/cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState<dynamic>> {
  final AuthRepo _authRepo;
  AuthCubit( {required AuthRepo authRepo}) : _authRepo = authRepo, super(AuthState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController nicknameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void emitSignupState() async {
    emit(const AuthState.loading());

    final response = await _authRepo.createNewUser(
      User(
        email: emailController.text,
        passwordHash: passwordController.text,
        address: addressController.text,
        phoneNumber: phoneController.text,
        username: userNameController.text,
        nickname: nicknameController.text,
      ),
    );

    response.when(success: (loginResponse) async {
      emit(AuthState.success(loginResponse));
    }, failure: (error) {
      emit(
        AuthState.error(error: error.message ?? ''),
      );
    });
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    addressController.dispose();
    userNameController.dispose();
    nicknameController.dispose();
    return super.close();
  }
}
