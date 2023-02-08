import "package:get_it/get_it.dart";
import 'package:travel_app/features/home/data/repositories/travel_data_repository.dart';
import 'package:travel_app/features/home/domain/repositories/user_info_repository.dart';
import 'package:travel_app/features/home/domain/usecases/get_user_data_usecase.dart';
import 'package:travel_app/features/home/domain/usecases/travel_data_usecase.dart';
import 'package:travel_app/features/home/presentation/bloc/user_data_bloc/user_data_bloc_bloc.dart';

import 'features/home/data/datasourses/travel_data_remote.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  locator
    ..registerLazySingleton(() => GetTravelDataUsecase(repository: locator()))
    ..registerLazySingleton(() => GetUserDataUsecase(repository: locator()))
    ..registerLazySingleton<UserInfoRepository>(
        () => UserInfoRepositoryImplementation(remoteDataSource: locator()))
    ..registerLazySingleton<TravelDataRemoteDataSource>(
        () => TravelDataRemoteDataSourceImpl());
}
