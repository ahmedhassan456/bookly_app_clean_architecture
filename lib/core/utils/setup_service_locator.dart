

import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/data_sources/home_local_data_source.dart';
import '../../features/home/data/data_sources/home_remote_data_source.dart';
import '../../features/home/data/repos/home_repo_implementaion.dart';

var getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    homeRemoteDataSource: HomeRemoteDataSourceImpl(
      getIt.get<ApiService>(),
    ),
    homeLocalDataSource: HomeLocalDataSourceImpl(),
  ));
}
