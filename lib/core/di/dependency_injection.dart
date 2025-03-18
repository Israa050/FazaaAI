
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:salam_hack/features/dashboard/data/home_repo.dart';
import 'package:salam_hack/features/dashboard/logic/cubit/home_cubit.dart';
import 'package:salam_hack/features/notifications/data/repo/notification_repo.dart';
import 'package:salam_hack/features/notifications/logic/cubit/notification_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import '../../features/auth/data/repo/auth_repository.dart';
import '../../features/auth/logic/cubit/auth_cubit.dart';
import '../../features/crisis/data/repo/crisis_repo.dart';
import '../../features/crisis/logic/cubit/crisis_cubit.dart';
import '../../features/post/data/repo/post_repo.dart';
import '../../features/post/logic/cubit/post_cubit.dart';
import '../../features/shelters/data/repo/shelters_repo.dart';
import '../../features/shelters/logic/cubit/shelter_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {

    // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<AuthRepo>(()=>AuthRepo(getIt()));
  getIt.registerFactory<AuthCubit>(()=> AuthCubit(authRepo: getIt() ) );

  getIt.registerLazySingleton<PostRepo>(()=> PostRepo(getIt()));
  getIt.registerFactory<PostCubit>(()=> PostCubit(homeRepo: getIt()));

  getIt.registerLazySingleton<SheltersRepo>(()=> SheltersRepo(getIt()));
  getIt.registerFactory<ShelterCubit>(()=> ShelterCubit(sheltersRepo: getIt()));

  
  getIt.registerLazySingleton<CrisisRepo>(()=> CrisisRepo(getIt()));
  getIt.registerFactory<CrisisCubit>(()=> CrisisCubit(crisisRepo: getIt()));

  getIt.registerLazySingleton<HomeRepo>(()=> HomeRepo(getIt()));
  getIt.registerLazySingleton<HomeCubit>(()=> HomeCubit(getIt()));


  getIt.registerLazySingleton<NotificationRepo>(()=> NotificationRepo(getIt()));
  getIt.registerLazySingleton<NotificationCubit>(()=> NotificationCubit(getIt()));
  
}