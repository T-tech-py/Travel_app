part of 'travle_data_bloc.dart';

abstract class TravelDataState extends Equatable {
  final List<TravelDataEntity> data;
  const TravelDataState({this.data = const []});

  @override
  List<Object> get props => [];
}

class TravelDataInitial extends TravelDataState {}

class TravelLoadingState extends TravelDataState {}

class TravelEmptyState extends TravelDataState {}

class TravelLoadedState extends TravelDataState {
  const TravelLoadedState({required super.data});
}

class TravelErrorState extends TravelDataState {
  final String errorMessage;
  const TravelErrorState({super.data = const [], required this.errorMessage});
}
