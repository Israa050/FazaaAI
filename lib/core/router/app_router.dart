import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/di/dependency_injection.dart';
import 'package:salam_hack/core/router/routes.dart';
import 'package:salam_hack/features/auth/logic/cubit/auth_cubit.dart';
import 'package:salam_hack/features/auth/screens/login_page.dart';
import 'package:salam_hack/features/auth/screens/signup_page.dart';
import 'package:salam_hack/features/crisis/logic/cubit/crisis_cubit.dart';
import 'package:salam_hack/features/crisis/presentation/crisis_page.dart';
import 'package:salam_hack/features/home/logic/cubit/home_cubit.dart';
import 'package:salam_hack/features/home/presentation/add/add_Resource.dart';
import 'package:salam_hack/features/home/presentation/home_screen.dart';
import 'package:salam_hack/features/shelters/logic/cubit/shelter_cubit.dart';
import 'package:salam_hack/features/shelters/presentation/screens/add_shelter.dart';
import 'package:salam_hack/features/shelters/presentation/screens/shelters_page.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: const HomeScreen(),
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
            builder: (_) => BlocProvider<HomeCubit>(
                  create: (context) => getIt<HomeCubit>(),
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
