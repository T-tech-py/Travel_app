part of 'user_data_bloc_bloc.dart';

abstract class UserDataBlocEvent extends Equatable {
  const UserDataBlocEvent();

  @override
  List<Object> get props => [];
}

class GetUserDataEvent extends UserDataBlocEvent {}
