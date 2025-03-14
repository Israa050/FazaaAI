import 'package:flutter/material.dart';
import '../../../core/themes/colors.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 249, 249),
      body: Container(
        padding: EdgeInsets.symmetric(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 16.0),
              const Text(
                'Create New Account',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Phone',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Address',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'user Role',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    checckbox(),
                  ]),
              const SizedBox(height: 24.0),
              Container(
                height: 50,
                width: 320,
                child: FloatingActionButton(
                  backgroundColor: AppColors.primaryBlue,
                  onPressed: () {
                   // Get.to(Homepage());
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                     // Get.to(Login());
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(color: AppColors.darkBlue),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class checckbox extends StatefulWidget {
  const checckbox({super.key});

  @override
  State<checckbox> createState() => _checckboxState();
}

class _checckboxState extends State<checckbox> {
  //bool user = false;
  //bool volunteer = false;
  String? _selectedRole;
  //void _updateCheckboxState(String checkboxType, bool? value) {
  //setState(() {
  //if (checkboxType == 'User') {
  //  user = value!;
  //if (user) volunteer = false;
  //} else if (checkboxType == 'Volunteer') {
  //volunteer = value!;
  //if (volunteer) user = false;
  //}
  //});
  //}

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      RadioListTile(
        title: const Text('User'),
        value: 'user',
        groupValue: _selectedRole,
        onChanged: (String? val) {
          setState(() {
            _selectedRole = val;
          });
        },
        activeColor: Colors.blue,
      ),
      RadioListTile(
        title: Text('Volunteer'),
        value: 'volunteer',
        groupValue: _selectedRole,
        onChanged: (String? val) {
          setState(() {
            _selectedRole = val;
          });
        },
        activeColor: Colors.blue,
      ),
    ]);
  }
}
