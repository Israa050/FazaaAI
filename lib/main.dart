import 'dart:io';

import 'package:flutter/material.dart';
import 'package:salam_hack/core/models/clsuser.dart';
import 'package:salam_hack/core/router/routes.dart';
import 'package:salam_hack/features/leader/leaderboaerd.dart';
import 'core/di/dependency_injection.dart';
import 'core/helper/constants.dart';
import 'core/helper/extensions.dart';
import 'core/helper/shared_pref_helper.dart';
import 'core/router/app_router.dart';
import 'core/themes/colors.dart';

ClsUser? currentUser;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await checkIfLoggedInUser();
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
      //home: Leaderboaerd(),
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