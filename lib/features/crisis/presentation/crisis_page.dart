import 'package:flutter/material.dart';
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
          'Crisis Alerts',
          style: TextStyles.font20RedBold.copyWith(color: Colors.white),
        ),
        backgroundColor: AppColors.primaryBlue,
        iconTheme: IconThemeData(color: Colors.white,),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: CrisisBlocBuilder(),
        ),
      );
  }
}
