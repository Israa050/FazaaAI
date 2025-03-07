import 'package:flutter/material.dart';
import 'package:salam_hack/core/helper/spacing.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/themes/styles.dart';
import 'package:salam_hack/core/widgets/custom_card_info.dart';
import 'package:salam_hack/core/widgets/custom_list_tile.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Avaliable \nShelters',
              style: TextStyles.font18BlackSemiBold,
            ),
            verticalPadding(10),
            // CustomCardInfo(
            //   isPost: false,
            //   height: 150,
            // )
          ],
        ),
      ),
    );
  }
}
