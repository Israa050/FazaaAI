import 'package:flutter/material.dart';
import 'package:salam_hack/core/di/dependency_injection.dart';
import 'package:salam_hack/core/router/app_router.dart';
import 'package:salam_hack/core/router/routes.dart';
import 'package:salam_hack/core/themes/colors.dart';

void main()async {
  await setupGetIt();
  runApp(
    MyApp(
      appRouter: AppRouter(),
    ),
  );
}

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
      initialRoute: Routes.loginScreen,
      //home: CrisisPage(),
    );
  }
}
