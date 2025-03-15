

import 'package:flutter/material.dart';

class CrisisCard extends StatelessWidget {
  const CrisisCard({super.key});

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
                "Flood in Downtown Area",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "2m ago",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
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
                "Central District, Main Street",
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
              icon: Icon(Icons.link, size: 18, color: Colors.blue),
              label: Text("Source"),
            ),

            // Details Button
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.info_outline, size: 18, color: Colors.black54),
              label: Text("Details"),
            ),

            // Guide Icon Button (No Label)
            IconButton(
              onPressed: () {
                // Action for guide icon
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