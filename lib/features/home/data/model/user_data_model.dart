import 'package:meta/meta.dart';
import '../../domain/entities/user_data_entity.dart';

class UserDataModel extends UserDataEntity {
  const UserDataModel({
    required String name,
    required String surname,
    required int id,
    required String token,
  }) : super(name: '', surname: '', id: 0, token: '');

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      name: json['name'],
      surname: json['surname'],
      token: json['token'],
      id: (json['id'] as num).toInt(),
    );
  }
  Map<String, dynamic> toJson() {
    return {'name': name, 'surname': surname, "token": token, "id": id};
  }
}
