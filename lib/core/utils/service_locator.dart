import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<ApiService>(ApiService(Dio()));
  sl.registerSingleton<HomeRepositoryImpl>(HomeRepositoryImpl(apiService: sl.get<ApiService>()));
} 