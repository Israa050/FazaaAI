
import 'package:flutter/material.dart';

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
