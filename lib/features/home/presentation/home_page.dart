import 'package:flutter/material.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/features/home/presentation/widgets/home_drawer.dart';
import 'package:salam_hack/core/widgets/custom_icon_button.dart';
import 'package:salam_hack/core/widgets/custom_list_tile.dart';

///old implementation of home page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hi, username',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: CustomIconButton(
              onTap: (){},
              icon: Icons.logout,
            )
          ),
        ],
        backgroundColor: AppColors.primaryBlue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: HomeDrawer(),
      backgroundColor: AppColors.background,
      body: Center(
        child: ListView(
          children: [
            //TODO: I will implement dynamic list behaviour after connecting with api
            CustomListTile(
              title: 'Offer',
              content: "content",
              fotter: "username",
              topRightIcon: Icon(Icons.warning_amber_outlined,),
              bottomLeftIcon: Icon(Icons.check_circle_outline_rounded,),
            ),
            
          ],
        ),
      ),
    );

  }
}
