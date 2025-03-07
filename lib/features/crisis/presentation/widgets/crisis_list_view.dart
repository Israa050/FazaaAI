
import 'package:flutter/material.dart';
import 'package:salam_hack/core/models/crisis.dart';
import 'package:salam_hack/features/crisis/presentation/widgets/crisis_tile.dart';

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
          child: CrisisTile()
        );
      },
    );
  }
}