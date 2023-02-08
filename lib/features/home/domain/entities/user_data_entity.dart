import 'package:equatable/equatable.dart';

class UserDataEntity extends Equatable {
  final String name;
  final String surname;
  final int id;
  final String token;

  const UserDataEntity(
      {required this.name,
      required this.surname,
      required this.id,
      required this.token});

  @override
  List<Object?> get props => [name, surname, id, token];
}
