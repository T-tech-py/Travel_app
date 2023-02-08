import 'dart:convert';
import 'package:flutter/services.dart';
import '../model/travel_data_model.dart';
import '../model/user_data_model.dart';

abstract class TravelDataRemoteDataSource {
  Future<List<TravelDataModel>> getTravelData();

  Future<UserDataModel> getUserData();
}

class TravelDataRemoteDataSourceImpl implements TravelDataRemoteDataSource {
  TravelDataRemoteDataSourceImpl();

  @override
  Future<List<TravelDataModel>> getTravelData() =>
      Future.delayed(const Duration(seconds: 4), () async {
        var data = await rootBundle.loadString('assets/json/travel_data.json');
        final response = await json.decode(data);
        var result = (response['payload']['card'] as List)
            .map((e) => TravelDataModel.fromJson(e))
            .toList();
        return result;
      });

  @override
  Future<UserDataModel> getUserData() =>
      Future.delayed(const Duration(seconds: 4), () async {
        var data = await rootBundle.loadString('assets/json/user_data.json');
        final response = await json.decode(data);
        var output = UserDataModel(
            id: 1,
            name: response['payload']['name'],
            surname: response['payload']['surname'],
            token: response['payload']['token']);
        return output;
      });
}
