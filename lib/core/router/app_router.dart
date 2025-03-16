import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';
import '../../features/auth/logic/cubit/auth_cubit.dart';
import '../../features/auth/screens/login_page.dart';
import '../../features/auth/screens/signup_page.dart';
import '../../features/crisis/logic/cubit/crisis_cubit.dart';
import '../../features/crisis/presentation/screens/crisis_page.dart';
import '../../features/post/logic/cubit/post_cubit.dart';
import '../../features/post/presentation/add/add_Resource.dart';
import '../../features/post/presentation/post_screen.dart';
import '../../features/shelters/logic/cubit/shelter_cubit.dart';
import '../../features/shelters/presentation/screens/add_shelter.dart';
import '../../features/shelters/presentation/screens/shelters_page.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<PostCubit>(),
            child: const PostScreen(),
          ),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<AuthCubit>(
            create: (context) => getIt<AuthCubit>(),
            child: LoginPage(),
          ),
        );

      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<AuthCubit>(
            create: (context) => getIt<AuthCubit>(),
            child: SignupPage(),
          ),
        );

      case Routes.sheltersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ShelterCubit>(
            create: (context) => getIt<ShelterCubit>(),
            child: SheltersPage(),
          ),
        );

      case Routes.crisisScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<CrisisCubit>(
            create: (context) => getIt<CrisisCubit>(),
            child: CrisisPage(),
          ),
        );

      case Routes.addPostScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<PostCubit>(
                  create: (context) => getIt<PostCubit>(),
                  child: AddResourcePage(),
                ));

      case Routes.addShelterScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<ShelterCubit>(
                  create: (context) => getIt<ShelterCubit>(),
                  child: AddShelterScreen(),
                ));

      default:
        return null;
    }
  }
}
