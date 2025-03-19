
import 'package:flutter/material.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/themes/styles.dart';

class NotificationTile extends StatelessWidget {
  final String title;
  final String location;
  final String time;
  final IconData icon;
  final VoidCallback? onTap;

  const NotificationTile({
    Key? key,
    required this.title,
    required this.location,
    required this.time,
    this.icon = Icons.warning_amber_rounded,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: Colors.black54),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(location),
      trailing: Text(
        time,
        style: TextStyle(color: Colors.grey.shade600),
      ),
      onTap: onTap,
    );
  }
}



class NotificationTileTests extends StatelessWidget {
  final String title;
  final String location;
  final String time;
  final IconData icon;
  final String type; // Added type to differentiate between match and crisis
  final VoidCallback? onTap;
  final VoidCallback? onAccept; // Callback for accepting a match
  final VoidCallback? onReject; // Callback for rejecting a match

  const NotificationTileTests({
    Key? key,
    required this.title,
    required this.location,
    required this.time,
    required this.type,
    this.icon = Icons.warning_amber_rounded,
    this.onTap,
    this.onAccept,
    this.onReject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: Colors.black54),
              ),
              title: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(location),
              trailing: Text(
                time,
                style: TextStyle(color: Colors.grey.shade600),
              ),
              onTap: onTap,
            ),
            if (type == "match") // Show buttons only for match type
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: onReject,
                      icon: const Icon(Icons.cancel, color: Colors.red),
                      label: Text("Reject",style: TextStyles.font14LightGrayRegular.copyWith(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        disabledBackgroundColor: AppColors.primaryBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: onAccept,
                      icon: const Icon(Icons.check_circle, color: Colors.white),
                      label: Text("Accept",style: TextStyles.font14LightGrayRegular.copyWith(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        disabledBackgroundColor: AppColors.primaryBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
