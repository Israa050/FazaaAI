

import 'package:flutter/material.dart';
import 'package:salam_hack/core/themes/styles.dart';
import 'package:salam_hack/features/crisis/data/model/generated_crisis_response.dart';
import 'package:salam_hack/features/crisis/presentation/screens/survival_guide_screen.dart';

class CrisisCard extends StatelessWidget {
  GeneratedCrisisResponse generatedCrisisResponse;
  CrisisCard({super.key,required this.generatedCrisisResponse});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
  elevation: 2,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  child: Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title and Timestamp
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                generatedCrisisResponse.enhancedDescription??  "Flood in Downtown Area",
                maxLines: 1,
                textWidthBasis: TextWidthBasis.longestLine,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            // Text(
            //   "2m ago",
            //   style: TextStyle(fontSize: 12, color: Colors.grey),
            // ),
          ],
        ),
        SizedBox(height: 4),

        // Location
        Row(
          children: [
            Icon(Icons.location_on, size: 16, color: Colors.blue),
            SizedBox(width: 4),
            Expanded(
              child: Text(
               generatedCrisisResponse.city??  "Central District, Main Street",
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ),
          ],
        ),
        Divider(height: 16),

        // Actions (Source, Details, and Guide Icon)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Source Button
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.edit, size: 18, color: Colors.blue),
              label: Text(generatedCrisisResponse.user!.username ?? 'username',style: TextStyles.font14DarkBlueMedium,),
            ),

            // // Details Button
            // TextButton.icon(
            //   onPressed: () {
            //     showCrisisDialog(context,generatedCrisisResponse);
            //   },
            //   icon: Icon(Icons.info_outline, size: 18, color: Colors.black54),
            //   label: Text("Details"),
            // ),

            // Guide Icon Button (No Label)
            IconButton(
              onPressed: () {
                // Action for guide icon
                  Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SurvivalGuideScreen(
                crisisType: generatedCrisisResponse.type ?? "Wildfire",
                location: generatedCrisisResponse.city?? 'DownTown',
                survivalGuide: generatedCrisisResponse.survivalGuide??
                    "1. Follow evacuation orders. \n2. Avoid breathing in smoke. \n3. Call emergency services at 911.",
              ),
            ),
          );
              },
              icon: Icon(Icons.menu_book, size: 24, color: Colors.black54),
            ),
          ],
        ),
      ],
    ),
  ),
);
  }
}