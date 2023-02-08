import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:travel_app/features/home/data/model/user_data_model.dart';
import 'package:travel_app/features/home/domain/repositories/user_data_repository.dart';
import 'package:travel_app/features/home/presentation/bloc/travle_data_bloc.dart';

class MockGetTravelData extends Mock implements GetTravelData {}

class MockGetUserData extends Mock implements GetUserData {}

void main() {
  TravelDataBloc bloc;
  MockGetTravelData travelData = MockGetTravelData();
  MockGetUserData userData = MockGetUserData();

  bloc = TravelDataBloc(
    getTravelData: travelData,
    getUserData: userData,
  );

  test('initialState should be Empty', () {
    // assert
    expect(bloc., equals(Empty()));
  });

  group("Get user data", (){
    final userData = UserDataModel(id: 1, name: 'Czar',surname: "Ken",
    token: "MKJSJJKSHJSSJKJKSJHSJBSJXBXWUHWUJHJSHQYJYGQ");
test(
      'should get data from the concrete use case',
      () async {
        // arrange
        
        when(MockGetUserData())
            .thenAnswer((_) async => Right(userData));
        // act
        bloc.add(GetTriviaForConcreteNumber(tNumberString));
        await untilCalled(mockGetConcreteNumberTrivia(any));
        // assert
        verify(mockGetConcreteNumberTrivia(Params(number: tNumberParsed)));
      },
    );
  });
}
