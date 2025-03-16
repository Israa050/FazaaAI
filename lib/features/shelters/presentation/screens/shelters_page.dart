import 'package:flutter/material.dart';
import 'package:salam_hack/core/widgets/new_custom_list_tile.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/styles.dart';

class SheltersPage extends StatelessWidget {
  const SheltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Shelters',
          style: TextStyles.font18WhiteBold,
        ),
        backgroundColor: AppColors.primaryBlue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: AppColors.background,
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 18,
          ),
          child: ListView.separated(
        itemCount: 6, // Example count
        separatorBuilder: (context, index) => const Divider(

          thickness: 1, 
          indent: 16, 
          endIndent: 16, 
          color: Colors.grey, // Light grey divider
        ),
        itemBuilder: (context, index) {
          return CustomListTile(
            title: 'Earthquake - Magnitude 5.8',
            subtitle: 'Rancho Santa Margarita, CA',
            trailingText: 'Just now',
            icon: Icons.home_rounded,
            onTap: () {
              print('Notification $index clicked');
            },
          );
        },
      ),
          //ShetersBlocBuilder()

          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Text(
          //       'Avaliable \nShelters',
          //       style: TextStyles.font18BlackSemiBold,
          //     ),
          //     verticalPadding(10),
          //     ShetersBlocBuilder()
          //     // CustomCardInfo(
          //     //   isPost: false,
          //     //   height: 150,
          //     // )
          //   ],
          // ),
          ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryBlue,
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.addShelterScreen);
        },
        child: Icon(Icons.add_home_outlined),
      ),
    );
  }
}
