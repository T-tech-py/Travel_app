import 'package:dartz/dartz.dart';
import 'package:travel_app/core/error/failure.dart';
import 'package:travel_app/features/home/domain/entities/user_data_entity.dart';

abstract class UserData {
  Future<Either<Failure, UserDataEntity>> fatchUserData();
}
