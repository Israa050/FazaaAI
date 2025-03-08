import 'package:flutter/material.dart';
import 'package:salam_hack/core/di/dependency_injection.dart';
import 'package:salam_hack/core/helper/constants.dart';
import 'package:salam_hack/core/helper/extensions.dart';
import 'package:salam_hack/core/helper/shared_pref_helper.dart';
import 'package:salam_hack/core/router/app_router.dart';
import 'package:salam_hack/core/router/routes.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/features/home/presentation/add/add_Resource.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  //await checkIfLoggedInUser();
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
      initialRoute: isLoggedInUser? Routes.homeScreen : Routes.loginScreen,
     // home: AddResourcePage(),
    );
  }
}

// checkIfLoggedInUser() async {
//   String? userToken =
//       await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
//   if (!userToken.isNullOrEmpty()) {
//     isLoggedInUser = true;
//   } else {
//     isLoggedInUser = false;
//   }
// }
