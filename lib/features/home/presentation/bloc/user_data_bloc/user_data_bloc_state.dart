part of 'user_data_bloc_bloc.dart';

abstract class UserDataBlocState extends Equatable {
  const UserDataBlocState();

  @override
  List<Object> get props => [];
}

class UserDataBlocInitial extends UserDataBlocState {}

class UserLoadingState extends UserDataBlocState {}

class UserEmptyState extends UserDataBlocState {}

class UserLoadedState extends UserDataBlocState {
  final UserDataEntity data;
  const UserLoadedState({required this.data});
}

class UserErrorState extends UserDataBlocState {
  final String errorMessage;
  const UserErrorState({required this.errorMessage});
}
