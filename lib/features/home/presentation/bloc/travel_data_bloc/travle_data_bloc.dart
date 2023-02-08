import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travel_app/features/home/domain/entities/user_data_entity.dart';
import 'package:travel_app/features/home/domain/usecases/travel_data_usecase.dart';

import '../../../domain/entities/travel_data_entity.dart';
import '../../../domain/usecases/get_user_data_usecase.dart';

part 'travle_data_event.dart';
part 'travle_data_state.dart';

const String serverFailureMessage = "Server failure";

class TravelDataBloc extends Bloc<TravleDataEvent, TravelDataState> {
  final GetTravelDataUsecase getTravelData;

  TravelDataBloc({
    required this.getTravelData,
  }) : super(TravelDataInitial()) {
    on<GetTravelDataEvent>((event, emit) async {
      emit(TravelLoadingState());
      final result = await getTravelData();
      result.fold(
          (error) => emit(TravelErrorState(
              errorMessage: serverFailureMessage, data: state.data)),
          (data) => emit(TravelLoadedState(data: data)));
    });
  }
}
