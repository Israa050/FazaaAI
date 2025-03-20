

import 'package:flutter/material.dart';

class SurvivalGuideScreen extends StatelessWidget {
  final String crisisType;
  final String location;
  final String survivalGuide;

  const SurvivalGuideScreen({
    Key? key,
    required this.crisisType,
    required this.location,
    required this.survivalGuide,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> guideSteps = crisisType.split(RegExp(r'(\d+\.\s*)')).where((e) => e.trim().isNotEmpty).toList();


    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.smart_toy, color: Colors.black54), // AI Icon
            SizedBox(width: 8),
            Text("AI Survival Guide"),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$location Survival Guide',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                survivalGuide,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              const SizedBox(height: 8),
              Divider(thickness: 3),
              const SizedBox(height: 8),
              Column(
                children: guideSteps.map((step) {
                  return ListTile(
                    leading:
                        Icon(Icons.check_circle, color: Colors.green), // ✅ Icon
                    title: Text(
                      step.trim(),
                      ///.replaceAll(
                         // RegExp(r'^\d+\.\s*'), ''), // Remove numbering
                      style: TextStyle(fontSize: 18),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 8),
              // Divider(thickness: 2),
            ],
          ),
        ),
      ),
    );
  }
}
