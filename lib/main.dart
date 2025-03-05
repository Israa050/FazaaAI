import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:salam_hack/core/models/user.dart';
import 'package:salam_hack/core/networking/api_service.dart';
import 'package:salam_hack/core/networking/dio_factory.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/features/home/home_page.dart';

 
void main() async{

  // User newUser = User(
  //   username: 'Samy',
  //   passwordHash: 'hashed_password',
  //   email: 'samy@gmail.com',
  //   phoneNumber: '123456789',
  //   address: '456 Main st',
  //   nickname: 'mohammed'
  // );



  Dio dio = DioFactory.getDio();
  ApiService apiService = ApiService(dio);

  //users = await apiService.getAllUsers();
  //user = await apiService.getUserByID('10');
  //await apiService.createNewUser(newUser);

  //await apiService.updateUserById('14',newUser);

  await apiService.deleteUserById('14');

  //print('Users List ${users?.length}');

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
      
      // Scaffold(
      //   appBar: AppBar(
      //     title: Text('API'),
      //     backgroundColor: Colors.pinkAccent,
      //   ),
      //   body:
        
      //    Column(
      //     children: [
      //       Text('User is ${user?.username} , Id: ${user?.userId}')
      //     ],
      //   )

        // ListView.builder(
        //   itemCount: users?.length,
        //   itemBuilder: (context,index){
        //     return ListTile(
        //       title: Text(users![index].username.toString()),
        //     );
        //   }
        //   ),
      );
  }
}
