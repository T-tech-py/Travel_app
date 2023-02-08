import 'package:meta/meta.dart';

import '../../domain/entities/travel_data_entity.dart';

class TravelDataModel extends TravelDataEntity {
  const TravelDataModel({
    required String name,
    required String description,
    required int amount,
    required String location,
  }) : super(name: '', description: '', amount: 0, location: '');

  factory TravelDataModel.fromJson(Map<String, dynamic> json) {
    return TravelDataModel(
      name: json['name'],
      description: json['description'],
      location: json['location'],
      amount: (json['ammount'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      "amount": amount,
      "location": location
    };
  }
}
