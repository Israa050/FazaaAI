
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailingText;
  final IconData icon;
  final VoidCallback? onTap;

  const CustomListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.trailingText = '',
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
      subtitle: Text(subtitle),
      trailing: trailingText.isNotEmpty
          ? Text(
              trailingText,
              style: TextStyle(color: Colors.grey.shade600),
            )
          : null,
      onTap: onTap,
    );
  }
}
