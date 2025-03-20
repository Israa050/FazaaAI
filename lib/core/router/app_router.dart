import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/features/auth/screens/login.dart';
import 'package:salam_hack/features/crisis/presentation/screens/add__crisis.dart';
import 'package:salam_hack/features/crisis/presentation/screens/add_crisis_page.dart';
import 'package:salam_hack/features/dashboard/logic/cubit/home_cubit.dart';
import 'package:salam_hack/features/dashboard/presentation/dashboarde.dart';
import 'package:salam_hack/features/leader/leaderboaerd.dart';
import 'package:salam_hack/features/notifications/logic/cubit/notification_cubit.dart';
import 'package:salam_hack/features/notifications/presentation/screens/notifications_page.dart';
import 'package:salam_hack/features/profile/logic/cubit/profile_cubit.dart';
import 'package:salam_hack/features/profile/presentation/screens/profile_page.dart';
import 'package:salam_hack/features/profile/presentation/widgets/profile_bloc_builder.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';
import '../../features/auth/logic/cubit/auth_cubit.dart';
import '../../features/auth/screens/login_page.dart';
import '../../features/auth/screens/signup_page.dart';
import '../../features/crisis/logic/cubit/crisis_cubit.dart';
import '../../features/crisis/presentation/screens/crisis_page.dart';
import '../../features/post/logic/cubit/post_cubit.dart';
import '../../features/post/presentation/add/add_post.dart';
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
          builder: (_) => BlocProvider<HomeCubit>(
            create: (context) => getIt<HomeCubit>(),
            child: Dashboarde(),
          ),
        );
      case Routes.postsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<PostCubit>(
            create: (context) => getIt<PostCubit>(),
            child: const PostScreen(),
          ),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<AuthCubit>(
            create: (context) => getIt<AuthCubit>(),
            child: Login(),
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

      case Routes.addCrisisScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<CrisisCubit>(),
            child: AddCrisisScreen(),
          ),
        );

      case Routes.notificationsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<NotificationCubit>(
            create: (context) => getIt<NotificationCubit>(),
            child: NotificationsPage(),
          ),
        );

      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => UserProfilePage(),
        );

      case Routes.leaderboardScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ProfileCubit>(
            create: (context) => getIt<ProfileCubit>(),
            child: Leaderboaerd(),
          ),
        );

      default:
        return null;
    }
  }
}
