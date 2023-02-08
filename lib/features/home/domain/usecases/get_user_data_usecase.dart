import 'package:dartz/dartz.dart';
import 'package:travel_app/core/error/failure.dart';
import '../entities/user_data_entity.dart';
import '../repositories/user_info_repository.dart';

class GetUserDataUsecase {
  final UserInfoRepository repository;
  GetUserDataUsecase({required this.repository});

  Future<Either<Failure, UserDataEntity>> call() async {
    return await repository.fatchUserData();
  }
}
