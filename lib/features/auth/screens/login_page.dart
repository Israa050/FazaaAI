import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/router/routes.dart';
import 'package:salam_hack/core/themes/styles.dart';
import 'package:salam_hack/features/auth/logic/cubit/auth_cubit.dart';
import 'package:salam_hack/features/auth/logic/cubit/auth_state.dart';
import 'package:salam_hack/features/auth/widgets/custom_text_button.dart';
import 'package:salam_hack/features/auth/widgets/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscureText = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if(state is Success){
               Navigator.of(context)
                  .pushReplacementNamed(Routes.homeScreen);
            }
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 100,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/images/login.png',
                    height: 259,
                    width: 390,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AppTextFormField(
                            hintText: 'username',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                            suffixIcon: Icon(Icons.email_outlined),
                            controller:
                                context.read<AuthCubit>().userNameController,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AppTextFormField(
                            hintText: 'password',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                            isObscureText: isObscureText,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isObscureText = !isObscureText;
                                });
                              },
                              icon: isObscureText
                                  ? Icon(
                                      Icons.visibility_off,
                                    )
                                  : Icon(
                                      Icons.visibility,
                                    ),
                            ),
                            controller:
                                context.read<AuthCubit>().passwordController,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  AppTextButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                      context.read<AuthCubit>().emitLoginState();
                  //      Navigator.of(context)
                  // .pushReplacementNamed(Routes.homeScreen);
                      }
                    },
                    buttonText: 'Login',
                    buttonHeight: 70,
                    textStyle: TextStyles.font18WhiteBold,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don\'t have an account? ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                              text: 'Signup',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  //print('Login Text Clicked');
                                  Navigator.of(context)
                                      .pushNamed(Routes.signupScreen);
                                }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
