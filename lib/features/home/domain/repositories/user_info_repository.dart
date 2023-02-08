import 'package:dartz/dartz.dart';
import 'package:travel_app/core/error/failure.dart';
import 'package:travel_app/features/home/domain/entities/user_data_entity.dart';

import '../entities/travel_data_entity.dart';

abstract class UserInfoRepository {
  Future<Either<Failure, UserDataEntity>> fatchUserData();

  Future<Either<Failure, List<TravelDataEntity>>> fatchTravelData();
}
