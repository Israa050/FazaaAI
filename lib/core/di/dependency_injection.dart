
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import '../../features/auth/data/repo/auth_repository.dart';
import '../../features/auth/logic/cubit/auth_cubit.dart';
import '../../features/crisis/data/repo/crisis_repo.dart';
import '../../features/crisis/logic/cubit/crisis_cubit.dart';
import '../../features/home/data/repo/home_repo.dart';
import '../../features/home/logic/cubit/home_cubit.dart';
import '../../features/shelters/data/repo/shelters_repo.dart';
import '../../features/shelters/logic/cubit/shelter_cubit.dart';

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