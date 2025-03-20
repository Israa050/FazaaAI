import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/helper/extensions.dart';
import 'package:salam_hack/core/helper/show_dialog.dart';
import 'package:salam_hack/core/router/routes.dart';
import 'package:salam_hack/features/auth/logic/cubit/auth_cubit.dart';
import 'package:salam_hack/features/auth/logic/cubit/auth_state.dart';
import 'package:salam_hack/features/auth/widgets/custom_text_button.dart';
import 'package:salam_hack/features/auth/widgets/custom_text_form_field.dart';
import 'package:salam_hack/features/dashboard/presentation/widgets/saftey_check_dialog.dart';

class Login extends StatelessWidget {
  Login({super.key});
  //Users user = Users(, '', password, email, role, phonenumber, address)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is Success) {
            Navigator.of(context).pushReplacementNamed(Routes.homeScreen);
          } else if (state is Error) {
            showCustomDialog(
              context,
              title: 'Login Failed',
              description: state.error,
              isSuccess: false,
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                        'assets/images/fazaaai.png',
                        height: 390,
                        width: 390,
                      ),
                    ),
                    const Text(
                      'Welcome Back',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 25.0),
                    AppTextFormField(
                      controller: context.read<AuthCubit>().emailController,
                      hintText: 'email',
                      validator: (value) {
                        if (value.isNullOrEmpty()) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 20),
                    AppTextFormField(
                      controller: context.read<AuthCubit>().passwordController,
                      hintText: 'password',
                      validator: (value) {
                        if (value.isNullOrEmpty()) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 20),
                    AppTextButton(
                      buttonHeight: 70,
                      buttonText: 'Login',
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        context.read<AuthCubit>().emitLoginState();
                      },
                    ),
                    // SizedBox(
                    //   width: double.infinity,
                    //   height: 50,
                    //   child: ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       backgroundColor: Colors.blue,
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(8)),
                    //     ),
                    //     onPressed: () {
                    //       // Implement submit action
                    //        context.read<AuthCubit>().emitLoginState();
                    //     },
                    //     child: Text(
                    //       "Login",
                    //       style: TextStyle(
                    //         fontSize: 18,
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(height: 20),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text(
                        'Dont have an account?',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                          onPressed: () {
                            //if(){},
                            //  Get.to(SignUp());
                            Navigator.of(context)
                                .pushNamed(Routes.signupScreen);
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(color: Colors.blue),
                          ))
                    ])
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
