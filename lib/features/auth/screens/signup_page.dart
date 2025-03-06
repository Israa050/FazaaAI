import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:salam_hack/core/router/routes.dart';
import 'package:salam_hack/core/themes/styles.dart';
import 'package:salam_hack/features/auth/widgets/custom_text_button.dart';
import 'package:salam_hack/features/auth/widgets/custom_text_form_field.dart';

class SignupPage extends StatelessWidget {
    final _formKey = GlobalKey<FormState>();

  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                  validator: (value) {},
                  suffixIcon: Icon(Icons.person),
                ),
                SizedBox(
                  height: 20,
                ),
                AppTextFormField(
                  hintText: 'email',
                  validator: (value) {},
                  suffixIcon: Icon(Icons.email),
                ),
                SizedBox(
                  height: 20,
                ),
                AppTextFormField(
                  hintText: 'phone',
                  validator: (value) {},
                  textInputType: TextInputType.phone,
                  suffixIcon: Icon(Icons.phone),
                ),
                SizedBox(
                  height: 20,
                ),
              
                AppTextFormField(
                  hintText: 'address',
                  validator: (value) {},
                  suffixIcon: Icon(Icons.location_on),
                ),
                SizedBox(
                  height: 20,
                ),
                AppTextFormField(
                  hintText: 'password',
                  validator: (value) {
                    if(isFormFieldEmpty(value)){
                      return 'This field is required';
                    }
                    return null;
                  },
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_off,
                    ),
                  ),
                ),

                 SizedBox(
                  height: 20,
                ),

                  AppTextFormField(
                  hintText: 'nickname',
                  validator: (value) {},
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
                  buttonHeight: 70 ,
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                       
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
                                  Navigator.of(context).pushNamed(Routes.loginScreen);
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
    );
  }
}


bool isFormFieldEmpty(String? value){
  if(value!.isEmpty){
    return true;
  }else{
    return false;
  }
}
