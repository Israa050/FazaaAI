
import 'package:flutter/material.dart';
import '../../../../core/models/crisis.dart';
import 'crisis_tile.dart';

class CrisisListView extends StatelessWidget {
  final List<Crisis> crisis;
  const CrisisListView({super.key,required this.crisis});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: crisis.length,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CrisisTile(
            type: crisis[index].crisisType,
            location: crisis[index].location,
            index: index+1,
            date: crisis[index].timeOfCrisis,
            resolved: crisis[index].resolved!,
          )
        );
      },
    );
  }
}