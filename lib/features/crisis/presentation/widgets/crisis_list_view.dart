
import 'package:flutter/material.dart';
import 'package:salam_hack/features/crisis/data/model/generated_crisis_response.dart';
import 'package:salam_hack/features/crisis/presentation/widgets/crisis_card.dart';

class CrisisListView extends StatelessWidget {
  final List<GeneratedCrisisResponse> crisis;
  const CrisisListView({super.key,required this.crisis});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: crisis.length,
      itemBuilder: (context,index){
        return CrisisCard(
          generatedCrisisResponse: crisis[index],
        );
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: CrisisTile(
        //     type: crisis[index].crisisType,
        //     location: crisis[index].location,
        //     index: index+1,
        //     date: crisis[index].timeOfCrisis,
        //     resolved: crisis[index].resolved!,
        //   )
        // );
      },
    );
  }
}