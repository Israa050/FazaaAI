import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:salam_hack/core/di/dependency_injection.dart';
import 'package:salam_hack/core/helper/constants.dart';
import 'package:salam_hack/core/helper/extensions.dart';
import 'package:salam_hack/core/helper/shared_pref_helper.dart';
import 'package:salam_hack/core/helper/spacing.dart';
import 'package:salam_hack/core/models/user.dart';
import 'package:salam_hack/core/networking/api_service.dart';
import 'package:salam_hack/core/router/app_router.dart';
import 'package:salam_hack/core/router/routes.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/widgets/custom_image_container.dart';

 ApiService apiService = getIt<ApiService>();

User? currentUser;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await checkIfLoggedInUser();

//   FilePickerResult? result = await FilePicker.platform.pickFiles();
// File? file;
// if (result != null) {
//   file = File(result.files.single.path!);
//   print(file.path);
// } else {
//   // User canceled the picker
// }
  //final ImagePicker picker = ImagePicker();
// Pick an image.
//final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  // ApiService apiService = getIt<ApiService>();
  // await apiService.createNewPost(
  //   7,
  //   'Title',
  //   'Description',
  //   'type',
  //   'urgency',
  //   'status',
  //   'location',
  //   'quantity',
  //   'contactInfo',
  //   file!,
  // );

  //await apiService.createNewPost2(Post());
  runApp(
    MyApp(
      appRouter: AppRouter(),
    ),
  );
}

File? myImage;

class MyApp extends StatelessWidget {
  AppRouter appRouter;
  MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Salam Hack',
      theme: ThemeData(
        primaryColor: AppColors.primaryBlue,
      ),
       onGenerateRoute: appRouter.generateRoute,
      initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
      //home: TestPost(),
    );
  }
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

class TestPost extends StatelessWidget {
  const TestPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            CustomImageContainer(),
            verticalPadding(25),
            Center(
              child: TextButton(
                onPressed: () {
                  print(myImage?.path);
                },
                child: Text(
                  'Add',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void createPost()async{
      MultipartFile multipartFile = await MultipartFile.fromFile(
      myImage!.path,
      filename: myImage!.path.split('/').last,
    );

  //   await apiService.createNewPost(
  //   7,
  //   'Title',
  //   'Description',
  //   'type',
  //   'urgency',
  //   'status',
  //   'location',
  //   'quantity',
  //   'contactInfo',
  //   multipartFile,
  // );
  }
}
