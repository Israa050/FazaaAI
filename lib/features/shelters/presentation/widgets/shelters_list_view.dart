

import 'package:flutter/material.dart';
import 'package:salam_hack/core/models/shelter.dart';
import 'package:salam_hack/core/widgets/custom_card_info.dart';

class SheltersListView extends StatelessWidget {
  List<Shelter> shelters;
   SheltersListView({super.key,required this.shelters});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      itemCount: shelters.length,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomCardInfo(
            isPost: false,
            title: shelters[index].name,
            description: shelters[index].location,
            username: shelters[index].capacity.toString(),
            height: 150,
          ),
        );
      },
    );
  }
}