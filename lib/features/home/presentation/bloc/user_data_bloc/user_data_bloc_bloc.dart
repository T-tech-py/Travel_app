import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travel_app/features/home/domain/entities/user_data_entity.dart';

import '../../../domain/usecases/get_user_data_usecase.dart';
import '../travel_data_bloc/travle_data_bloc.dart';

part 'user_data_bloc_event.dart';
part 'user_data_bloc_state.dart';

class UserDataBloc extends Bloc<UserDataBlocEvent, UserDataBlocState> {
  final GetUserDataUsecase getUserData;
  UserDataBloc({required this.getUserData}) : super(UserDataBlocInitial()) {
    on<UserDataBlocEvent>((event, emit) async {
      emit(UserLoadingState());
      final result = await getUserData();
      result.fold(
          (error) => emit(const UserErrorState(
                errorMessage: serverFailureMessage,
              )), (data) {
        emit(UserLoadedState(data: data));
      });
    });
  }
}
