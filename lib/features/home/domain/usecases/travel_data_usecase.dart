import 'package:dartz/dartz.dart';
import 'package:travel_app/core/error/failure.dart';
import '../entities/travel_data_entity.dart';
import '../repositories/user_info_repository.dart';

class GetTravelDataUsecase {
  final UserInfoRepository repository;
  GetTravelDataUsecase({required this.repository});

  Future<Either<Failure, List<TravelDataEntity>>> call() async {
    return await repository.fatchTravelData();
  }
}
