import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:travel_app/core/constans/colors.dart';
import 'package:travel_app/core/constans/sizeboxs.dart';
import 'package:travel_app/core/constans/styles.dart';
import 'package:travel_app/core/router/navigator.dart';
import 'package:travel_app/core/util/radius.dart';
import 'package:travel_app/features/detail/presentation/page/details.dart';
import '../bloc/user_data_bloc/user_data_bloc_bloc.dart';
import '../widget/activity_picker_card.dart';
import '../widget/animator.dart';
import '../widget/fillter_button.dart';
import '../widget/journey_card.dart';
import '../widget/navbar.dart';
import '../widget/notification_widget.dart';
import '../widget/option_text_widget.dart';
import '../widget/search_field.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> activities = [
    "Camping",
    "Mountain",
    "Climbing",
    "Swimming",
    "Soccer",
    "Racing",
    "Dancing"
  ];

  @override
  void initState() {
    super.initState();
    context.read<UserDataBloc>().add(GetUserDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ySize(36),
            BlocConsumer<UserDataBloc, UserDataBlocState>(
              listener: (context, state) {
                if (state is UserErrorState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.errorMessage)));
                }
              },
              builder: (context, state) {
                if (state is UserLoadingState) {
                  return Center(
                      child: SizedBox(
                          width: 50.h,
                          height: 50.h,
                          child: const CircularProgressIndicator()));
                }
                if (state is UserLoadedState) {
                  return Row(
                    children: [
                      Container(
                        width: 48.h,
                        height: 48.h,
                        decoration: BoxDecoration(
                          borderRadius: customRadius(8),
                          color: profileYellow,
                        ),
                        child: ClipRRect(
                            child: Image.asset(
                                "assets/image/png/profile_pic.png")),
                      ),
                      xSize(16),
                      Text.rich(TextSpan(
                          text: "Howdy, \n",
                          children: [
                            TextSpan(
                                text:
                                    '${state.data.name} ${state.data.surname}',
                                style: textStyle12Grey600)
                          ],
                          style: textStyle12Grey400)),
                      const Spacer(),
                      NotificationWidget(
                        onTap: () {},
                      ),
                    ],
                  );
                }
                return Container();
              },
            ),
            ySize(26),
            Text(
              "Where would \nlike you to go?",
              style: textStyle32White700.copyWith(
                  fontWeight: FontWeight.w600, color: black),
            ),
            ySize(20),
            Row(children: [
              const Expanded(child: SearchTextField()),
              xSize(20),
              FillterButton(
                onTap: () {},
              )
            ]),
            ySize(21),
            SizedBox(
                height: 60.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: activities.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ActivityPickerCard(
                          currentIndex: index,
                          length: activities.length,
                          title: activities[index],
                          isSelected: false,
                          onTap: () {},
                        ),
                      );
                    })),
            ySize(10),
            OptionTextWidget(
              actionText: 'View all',
              optionTitle: 'Favorite Place',
              onTap: () {},
            ),
            ySize(21.5),
            Expanded(
              flex: 2,
              child: AnimationLimiter(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) => ListAnimator(
                    index: index,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 45.h),
                      child: JourneyCard(
                        name: "Tanjung Aan",
                        location: "Pujut, Lombok Tengah",
                        amount: "230",
                        onTap: () =>
                            Navigate.push(context, const CardDetailsScreen()),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
