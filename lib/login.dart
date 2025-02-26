import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salam/views/homepage.dart';
import 'package:salam/views/Sign_up.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 243, 243),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/login.png',
                height: 390,
                width: 350,
              ),
              const Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38),
              ),
              const SizedBox(height: 25.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
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
      ),
    );
  }
}
