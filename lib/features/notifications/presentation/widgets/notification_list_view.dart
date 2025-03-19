import 'package:flutter/material.dart';
import 'package:salam_hack/features/notifications/data/models/notification.dart';
import 'package:salam_hack/features/notifications/presentation/widgets/notification_tile.dart';

class NotificationListView extends StatelessWidget {
  List<ClsNotification>? notifications;

  NotificationListView({super.key, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: notifications!.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: NotificationTileTests(
            title:notifications?[index].message ?? "message",
              type: notifications?[index].type ?? 'type',
              location: '',
              time: ''
               ),
          
          //  NotificationTile(
          //     title: notifications?[index].message ?? "message",
          //     location: notifications?[index].type ?? 'type',
          //     time: ''
          //     ),
          // CustomCardInfo(
          //   isPost: true,
          //   priority: posts[index].urgency,
          //   title: posts[index].type,
          //   description: posts[index].description,
          //   username: posts[index].user?.username,
          // ),
        );
      },
    );
  }
}
