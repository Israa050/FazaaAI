import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/router/routes.dart';
import '../../../core/themes/styles.dart';
import '../logic/cubit/auth_cubit.dart';
import '../logic/cubit/auth_state.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/custom_text_form_field.dart';

class SignupPage extends StatefulWidget {

  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();

  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is Success) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${state.data.toString()} ✅'),
                ),
              );
            }else if(state is Error){
               ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Something went wrong ❌'),
                ),
              );

            }
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 60,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create New Account',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        AppTextFormField(
                          hintText: 'username',
                          validator: (value) {
                             if (isFormFieldEmpty(value)) {
                              return 'This field is required';
                            }
                            return null;
                          },
                          suffixIcon: Icon(Icons.person),
                          controller:
                              context.read<AuthCubit>().userNameController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppTextFormField(
                          hintText: 'email',
                          validator: (value) {
                             if (isFormFieldEmpty(value)) {
                              return 'This field is required';
                            }
                            return null;
                          },
                          suffixIcon: Icon(Icons.email),
                          controller: context.read<AuthCubit>().emailController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppTextFormField(
                          hintText: 'phone',
                          validator: (value) {
                             if (isFormFieldEmpty(value)) {
                              return 'This field is required';
                            }
                            return null;
                          },
                          textInputType: TextInputType.phone,
                          suffixIcon: Icon(Icons.phone),
                          controller: context.read<AuthCubit>().phoneController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppTextFormField(
                          hintText: 'address',
                          validator: (value) {
                             if (isFormFieldEmpty(value)) {
                              return 'This field is required';
                            }
                            return null;
                          },
                          suffixIcon: Icon(Icons.location_on),
                          controller:
                              context.read<AuthCubit>().addressController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppTextFormField(
                          hintText: 'password',
                          isObscureText:isObscureText ,
                          validator: (value) {
                            if (isFormFieldEmpty(value)) {
                              return 'This field is required';
                            }
                            return null;
                          },
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
                        SizedBox(
                          height: 20,
                        ),
                        AppTextFormField(
                          hintText: 'nickname',
                          validator: (value) {
                             if (isFormFieldEmpty(value)) {
                              return 'This field is required';
                            }
                            return null;
                          },
                          controller:
                              context.read<AuthCubit>().nicknameController,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  AppTextButton(
                    buttonText: 'Sumbit',
                    textStyle: TextStyles.font18WhiteBold,
                    buttonHeight: 70,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<AuthCubit>().emitSignupState();
                      }
                    },
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            TextSpan(
                                text: 'Login',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    //print('Login Text Clicked');
                                    Navigator.of(context)
                                        .pushNamed(Routes.loginScreen);
                                  }),
                          ],
                        ),
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

bool isFormFieldEmpty(String? value) {
  if (value!.isEmpty) {
    return true;
  } else {
    return false;
  }
}
