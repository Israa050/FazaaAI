import 'package:flutter/material.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/router/routes.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';
import 'widgets/home_bloc_builder.dart';
import 'widgets/home_drawer.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Crisis Alert',
            style: TextStyles.font20RedBold.copyWith(color: Colors.white),
          ),
          backgroundColor: AppColors.primaryBlue,
          // Colors.white,
          // iconTheme: IconThemeData(color: Color(0xff4B5563)),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.crisisScreen);
              },
              icon: Icon(
                Icons.notifications_none,
              ),
            ),
            horizontalPadding(
              5,
            ),
          ],
          elevation: 4,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        drawer: HomeDrawer(),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: HomeBlocBuilder(),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.red,
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.addPostScreen);
          },
          label: Text(
            'Report Emergency',
            style: TextStyles.font16BlackSemiBold.copyWith(
              color: Colors.white,
            ),
          ),
          icon: const Icon(
            Icons.warning_amber_rounded,
            color: Colors.white,
            size: 25,
          ),
        ),
      ),
    );
  }
}
