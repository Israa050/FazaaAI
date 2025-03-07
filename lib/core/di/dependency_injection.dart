
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:salam_hack/core/networking/api_service.dart';
import 'package:salam_hack/core/networking/dio_factory.dart';
import 'package:salam_hack/features/auth/data/repo/auth_repository.dart';
import 'package:salam_hack/features/auth/logic/cubit/auth_cubit.dart';
import 'package:salam_hack/features/crisis/data/repo/crisis_repo.dart';
import 'package:salam_hack/features/crisis/logic/cubit/crisis_cubit.dart';
import 'package:salam_hack/features/home/data/repo/home_repo.dart';
import 'package:salam_hack/features/home/logic/cubit/home_cubit.dart';
import 'package:salam_hack/features/shelters/data/repo/shelters_repo.dart';
import 'package:salam_hack/features/shelters/logic/cubit/shelter_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {

    // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<AuthRepo>(()=>AuthRepo(getIt()));
  getIt.registerFactory<AuthCubit>(()=> AuthCubit(authRepo: getIt() ) );

  getIt.registerLazySingleton<HomeRepo>(()=> HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(()=> HomeCubit(homeRepo: getIt()));

  getIt.registerLazySingleton<SheltersRepo>(()=> SheltersRepo(getIt()));
  getIt.registerFactory<ShelterCubit>(()=> ShelterCubit(sheltersRepo: getIt()));

  
  getIt.registerLazySingleton<CrisisRepo>(()=> CrisisRepo(getIt()));
  getIt.registerFactory<CrisisCubit>(()=> CrisisCubit(crisisRepo: getIt()));


  
}