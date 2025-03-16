import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:salam/models/users.dart';
import 'package:salam/views/homepage.dart';
import 'package:salam/views/Sign_up.dart';

class Login extends StatelessWidget {
  Login({super.key});
  //Users user = Users(, '', password, email, role, phonenumber, address)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/FazaaAI.png',
                height: 390,
                width: 350,
              ),
              const Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 25.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'user name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: 320,
                child: FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    Get.to(Homepage());
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  'Dont have an account?',
                  style: TextStyle(color: Colors.black),
                ),
                TextButton(
                    onPressed: () {
                      //if(){},
                      Get.to(SignUp());
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
    );
  }
}
