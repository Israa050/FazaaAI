import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:salam_hack/core/networking/api_service.dart';
import 'package:salam_hack/core/networking/dio_factory.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/features/home/home_page.dart';

void main() async{

  Dio dio = DioFactory.getDio();
  ApiService apiService = ApiService(dio);

  final users = await apiService.getAllUsers();

  print('Users List ${users.length}');
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Salam Hack',
      theme: ThemeData(
        primaryColor: AppColors.primaryBlue,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
