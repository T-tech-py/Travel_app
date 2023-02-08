part of 'travle_data_bloc.dart';

abstract class TravleDataEvent extends Equatable {
  const TravleDataEvent();

  @override
  List<Object> get props => [];
}

class GetTravelDataEvent extends TravleDataEvent {}
