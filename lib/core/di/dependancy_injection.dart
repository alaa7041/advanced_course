import 'package:advanced_course/core/networking/api_service.dart';
import 'package:advanced_course/core/networking/dio_factory.dart';
import 'package:advanced_course/features/login/data/repos/login_repo.dart';
import 'package:advanced_course/features/register/data/repositories/register_repo.dart';
import 'package:advanced_course/features/register/logic/cubit/register_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/login/logic/cubit/login_cubit.dart';



final  getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio =  DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

  // home
  // getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));

}