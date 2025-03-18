


import 'package:flutter/material.dart';
import 'package:salam_hack/features/crisis/data/model/generated_crisis_response.dart';

void showCrisisDialog(BuildContext context, GeneratedCrisisResponse crisis) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Crisis Details"),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Type: ${crisis.type}", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("City: ${crisis.city}"),
              SizedBox(height: 8),
              Text("Reported by: ${crisis.user?.username}"),
              SizedBox(height: 8),
              Text("User Description:", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(crisis.userDescription!),
              SizedBox(height: 8),
              Text("Enhanced Description:", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(crisis.enhancedDescription!),
              SizedBox(height: 8),
              Text("Survival Guide:", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(crisis.survivalGuide!),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text("Close"),
          ),
        ],
      );
    },
  );
}