
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:salam_hack/core/networking/api_service.dart';
import 'package:salam_hack/core/networking/dio_factory.dart';
import 'package:salam_hack/features/auth/data/repo/auth_repository.dart';
import 'package:salam_hack/features/auth/logic/cubit/auth_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {

    // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<AuthRepo>(()=>AuthRepo(getIt()));
  getIt.registerFactory<AuthCubit>(()=> AuthCubit(authRepo: getIt() ) );


  
}