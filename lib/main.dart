
import 'package:flutter/material.dart';
import 'package:salam_hack/core/di/dependency_injection.dart';
import 'package:salam_hack/core/helper/constants.dart';
import 'package:salam_hack/core/helper/extensions.dart';
import 'package:salam_hack/core/helper/shared_pref_helper.dart';
import 'package:salam_hack/core/models/user.dart';
import 'package:salam_hack/core/router/app_router.dart';
import 'package:salam_hack/core/router/routes.dart';
import 'package:salam_hack/core/themes/colors.dart';

User? currentUser;

void main()async {
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
      //home: AddResourcePage(),
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



