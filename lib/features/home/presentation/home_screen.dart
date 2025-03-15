import 'package:flutter/material.dart';
import 'package:salam_hack/core/widgets/custom_card_info.dart';
import 'package:salam_hack/features/home/presentation/widgets/post_card.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/router/routes.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';
import 'widgets/home_bloc_builder.dart';
import 'widgets/home_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Posts',
            style: TextStyles.font20RedBold.copyWith(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          // Colors.white,
          // iconTheme: IconThemeData(color: Color(0xff4B5563)),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.crisisScreen);
              },
              icon: Icon(
                Icons.notifications_none,
              ),
            ),
            horizontalPadding(
              5,
            ),
          ],
          elevation: 4,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: HomeDrawer(),
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 15,
            ),
            child: ListView(
              children: [

                PostCard(
                  title: 'Flood in DownTown',
                  status: 'In progress',
                  location: 'DownTown',
                  priority: 'High',
                  timeAgo: '2 min ago',
                ),

                PostCard(
                  title: 'Flood in DownTown',
                  status: 'In progress',
                  location: 'DownTown',
                  priority: 'Meduim',
                  timeAgo: '2 min ago',
                ),

                  PostCard(
                  title: 'Flood in DownTown',
                  location: 'DownTown',
                  priority: 'low',
                  timeAgo: '2 min ago',
                  status: 'Done',
                ),
              ],
            )

            // HomeBlocBuilder(),
            ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primaryBlue,
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.addPostScreen);
          },
          child: Icon(Icons.add,color: Colors.white,size: 25,),
        ),
      ),
    );
  }
}


class TestCard extends StatelessWidget {
  const TestCard({super.key});

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