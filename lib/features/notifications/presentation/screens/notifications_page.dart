import 'package:flutter/material.dart';
import 'package:salam_hack/core/helper/spacing.dart';
import 'package:salam_hack/core/themes/styles.dart';
import 'package:salam_hack/features/notifications/presentation/widgets/notification_tile.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyles.font20RedBold.copyWith(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        // Colors.white,
        // iconTheme: IconThemeData(color: Color(0xff4B5563)),
        actions: [
          IconButton(
            onPressed: () {
              //Navigator.of(context).pushNamed(Routes.crisisScreen);
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
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: ListView(
          children: [
            NotificationTile(
              title: 'We need Food',
              location: 'Donw Town',
              time: '10 min',
            ),
            NotificationTile(
              title: 'We need Food',
              location: 'Donw Town',
              time: '10 min',
            ),
            NotificationTile(
              title: 'We need Food',
              location: 'Donw Town',
              time: '10 min',
            ),
          ],
        ),
      ),
    );
  }
}
