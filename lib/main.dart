import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/theme/theme.dart';
import 'package:travel_app/locator.dart';
import 'core/router/navigator_service.dart';
import 'features/home/domain/usecases/get_user_data_usecase.dart';
import 'features/home/domain/usecases/travel_data_usecase.dart';
import 'features/home/presentation/bloc/travel_data_bloc/travle_data_bloc.dart';
import 'features/home/presentation/bloc/user_data_bloc/user_data_bloc_bloc.dart';
import 'features/onboarding/presentation/page/onboarding.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => TravelDataBloc(
                  getTravelData: locator<GetTravelDataUsecase>(),
                )),
        BlocProvider(
            create: (context) =>
                UserDataBloc(getUserData: locator<GetUserDataUsecase>())),
      ],
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: context.themeData,
            navigatorKey: NavigatorService().key,
            home: child,
          );
        },
        child: const OnboardingScreen(),
      ),
    );
  }
}
