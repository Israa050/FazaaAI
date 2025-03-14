import 'package:flutter/material.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/styles.dart';
import '../widgets/sheters_bloc_builder.dart';

class SheltersPage extends StatelessWidget {
  const SheltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          child: ShetersBlocBuilder()

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
