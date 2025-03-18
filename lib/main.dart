import 'dart:io';

import 'package:flutter/material.dart';
import 'package:salam_hack/core/models/clsuser.dart';
import 'package:salam_hack/core/router/routes.dart';
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
     // home: PostScreen(),
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

// class TestPost extends StatelessWidget {
//   const TestPost({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Title'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Column(
//           children: [
//             CustomImageContainer(),
//             verticalPadding(25),
//             Center(
//               child: TextButton(
//                 onPressed: () {
//                   print(myImage?.path);
//                   createPost();
//                 },
//                 child: Text(
//                   'Add',
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   void createPost() async {
//     //  print(multipartFile.filename);

//     //  await apiService.createMyPost(
//     //   Post(
//     //     description: 'test',
//     //     title: 'test',
//     //     type: 'test type',
//     //     urgency: 'High',
//     //     status: 'Done',
//     //     location: '1223 Main st',
//     //     quantity: 5,
//     //     contactInfo: '1223466',
//     //  ), multipartFile);

//     var myPost = ClsPostRequest(
//         userId: 28,
//         description: 'test',
//         title: 'test',
//         type: 'test type',
//         urgency: 'High',
//         status: 'Done',
//         location: '1223 Main st',
//         quantity: 5,
//         contactInfo: '1223466',
//         photoUrl: myImage);

//     MultipartFile multipartFile = await MultipartFile.fromFile(
//       myImage!.path,
//       filename: myImage!.path.split('/').last,
//     );

//     // var response = myPost.toJson();

//     FormData formData = FormData.fromMap({
//       "title": myPost.title,
//       "description": myPost.description,
//       "userId": myPost.userId,
//       "location": myPost.location,
//       "type": myPost.type,
//       "urgency": myPost.urgency,
//       "status": myPost.status,
//       "quantity": myPost.quantity,
//       "contactInfo": myPost.contactInfo,
//       "photoUrl": myPost.photoUrl != null
//           ? await MultipartFile.fromFile(
//               myPost.photoUrl!.path,
//               filename: myPost.photoUrl!.path.split('/').last,
//             ) // Ensure a valid filename)
//           : 'Test',
//     });

//     Dio dio = Dio();

//     dio.options.headers = {
//       'Accept': 'application/json',
//       "Content-Type": "application/json",
//       'Authorization':
//           'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJTYXJhIiwiaWF0IjoxNzQxOTA3NzUxLCJleHAiOjE3NDE5OTQxNTF9.qR3Hsb7EOiF9MqsojX_3l98NnSs8rW7TPfo8cJ7Lm-g',
//     };

//     dio?.interceptors.add(
//       PrettyDioLogger(
//         requestBody: true,
//         requestHeader: true,
//         responseHeader: true,
//         responseBody: true,
//         error: true,
//       ),
//     );

//     dio.interceptors.add(InterceptorsWrapper(
//       onRequest: (options, handler) {
//         print("Request Headers: ${options.headers}");
//         print("Request Data: ${options.data}");
//         return handler.next(options);
//       },
//     ));

//     dio.interceptors.add(InterceptorsWrapper(
//       onRequest: (options, handler) async {
//         print("Request Headers: ${options.headers}");

//         if (options.data is FormData) {
//           FormData formData = options.data as FormData;
//           print("Sending FormData:");

//           formData.fields.forEach((field) {
//             print("${field.key}: ${field.value}");
//           });

//           formData.files.forEach((file) {
//             print("${file.key}: ${file.value.filename} - ${file.value.length}");
//           });
//         } else {
//           print("Request Data: ${options.data}");
//         }
//         return handler.next(options);
//       },
//     ));

//     ApiService apiService2 = ApiService(dio);

//     // await apiService2.createMyPost(formData);

//     print("FormData: ${formData.fields}");
//     print("File: ${myPost.photoUrl?.path}");

//     print("FormData fields:");
//     formData.fields.forEach((field) => print("${field.key}: ${field.value}"));

//     if (myPost.photoUrl != null) {
//       print("Photo File Path: ${myPost.photoUrl!.path}");
//     } else {
//       print("No photo selected.");
//     }

//     ///FormData formData = await myPost.toFormData();

//     //   await apiService.testCreateNewPost(
//     //     Post(

//     //     )
//     //   7,
//     //   'Title',
//     //   'Description',
//     //   'type',
//     //   'urgency',
//     //   'status',
//     //   'location',
//     //   'quantity',
//     //   'contactInfo',
//     //   multipartFile,
//     // );
//   }
// }
