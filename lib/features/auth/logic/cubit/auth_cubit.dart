import 'package:flutter/material.dart';
import '../../../../core/helper/constants.dart';
import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../core/models/user.dart';
import '../../../../core/networking/dio_factory.dart';
import '../../data/model/login_request_body.dart';
import '../../data/repo/auth_repository.dart';
import 'auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState<dynamic>> {
  final AuthRepo _authRepo;
  AuthCubit({required AuthRepo authRepo})
      : _authRepo = authRepo,
        super(AuthState.initial());

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

  void emitLoginState() async {
    emit(const AuthState.loading());

    final response = await _authRepo
        .login( LoginRequestBody(username: userNameController.text, password: passwordController.text));
                    //LoginRequestBody(username: 'Shahd', password: 's@123')
    response.when(
      success: (token) async {
      await saveUserToken(token);
      emit(AuthState.success(token));
      },
      failure: (error) {
        print("The errror is ${error.message} code ${error.code}");
        emit(AuthState.error(error: error.message ?? ''));
      },
    );
  }

    Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
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
