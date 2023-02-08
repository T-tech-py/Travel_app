import 'package:dartz/dartz.dart';
import 'package:travel_app/features/home/domain/entities/travel_data_entity.dart';
import 'package:travel_app/core/error/failure.dart';
import 'package:travel_app/features/home/domain/entities/user_data_entity.dart';
import '../../domain/repositories/user_info_repository.dart';
import '../datasourses/travel_data_remote.dart';

class UserInfoRepositoryImplementation implements UserInfoRepository {
  final TravelDataRemoteDataSource remoteDataSource;

  UserInfoRepositoryImplementation({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<TravelDataEntity>>> fatchTravelData() async {
    try {
      final remoteTravel = await remoteDataSource.getTravelData();
      return Right(remoteTravel);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UserDataEntity>> fatchUserData() async {
    try {
      final remoteUserData = await remoteDataSource.getUserData();
      print(remoteUserData);
      return Right(remoteUserData);
    } catch (e) {
      return Left(CacheFailure());
    }
  }
}
