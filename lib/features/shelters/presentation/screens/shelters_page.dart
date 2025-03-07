import 'package:flutter/material.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/widgets/custom_list_tile.dart';

class SheltersPage extends StatelessWidget {
  const SheltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shelters',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: AppColors.primaryBlue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: AppColors.background,
      body: ListView(
        children: [
          //TODO: I will implement dynamic list behaviour after connecting with api
          CustomListTile(
            title: 'Name',
            content: 'Some content',
            fotter: 'Authored by username',
          ),
        ],
      ),
    );
  }
}
