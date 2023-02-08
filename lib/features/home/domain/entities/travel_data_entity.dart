import 'package:equatable/equatable.dart';

class TravelDataEntity extends Equatable {
  final String name;
  final String description;
  final int amount;
  final String location;

  const TravelDataEntity(
      {required this.name,
      required this.description,
      required this.amount,
      required this.location});

  @override
  List<Object?> get props => [name, description, amount, location];
}
