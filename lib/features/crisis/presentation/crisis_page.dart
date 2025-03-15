import 'package:flutter/material.dart';
import 'package:salam_hack/core/helper/spacing.dart';
import 'package:salam_hack/core/router/routes.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';
import 'widgets/crisis_bloc_builder.dart';

class CrisisPage extends StatelessWidget {
  const CrisisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Posts',
            style: TextStyles.font20RedBold.copyWith(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
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
          iconTheme: IconThemeData(color: Colors.black),
        ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 15,
        ),
        child: CrisisBlocBuilder(),
        ),
      );
  }
}
