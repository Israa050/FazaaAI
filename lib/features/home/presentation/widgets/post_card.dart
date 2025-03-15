



import 'package:flutter/material.dart';
import 'package:salam_hack/core/helper/spacing.dart';
import 'package:salam_hack/core/themes/colors.dart';

class PostCard extends StatefulWidget {
   String? title;
   String? location;
   String? priority;
   String? status;
   String? timeAgo;

  PostCard({
    Key? key,
    required this.title,
    required this.location,
    required this.priority,
    required this.status,
    required this.timeAgo,
  }) : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {


  Color? priorityColor = AppColors.darkGreen;
  Color? priorityTextColor = AppColors.darkGreen;

   Color? statusColor = AppColors.gray;
  Color? statusTextColor = AppColors.gray;

  String checkPriority(String prioroty) {
    String priorityName = '';
    switch (prioroty.toLowerCase()) {
      case 'high':
        priorityColor = AppColors.red;
        priorityTextColor = Colors.red;
        priorityName = 'High Priority';
        break;

      case 'meduim':
        priorityColor = AppColors.darkOrange;
        priorityTextColor = AppColors.darkOrange;
        priorityName = 'Meduim Priority';
        break;

      case 'low':
        priorityColor = AppColors.darkGreen;
        priorityTextColor = AppColors.darkGreen;
        priorityName = 'Low Priority';
        break;

      default:
        priorityName = 'Low Priority';
    }
    setState(() {});
    return priorityName;
  }

   String checkStatus(String status) {
    String statusName = '';
    switch (status.toLowerCase()) {
      case 'in progress':
        statusColor = AppColors.gray;
        statusTextColor = Colors.grey;
        statusName = 'In Progress';
        break;

      case 'done':
        statusColor = AppColors.darkGreen;
        statusTextColor = AppColors.darkGreen;
        statusName = 'Done';
        break;

      default:
        statusName = 'In Progress';
    }
    setState(() {});
    return statusName;
  }


  @override
  void initState() {
    widget.priority = checkPriority(widget.priority ?? 'Low');
    widget.status = checkStatus(widget.status ?? 'in progress');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Priority and Status Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTag(widget.priority!, priorityColor!),
                _buildTag(widget.status!, statusColor!),
              ],
            ),
            const SizedBox(height: 8),

            // Title
            Text(
              widget.title?? '',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Location
            Text(
              widget.location?? '',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),

            const SizedBox(height: 10),

            // Footer: Username & Details
            Row(
             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.edit, size: 16, color: Colors.blue),
                    const SizedBox(width: 4),
                    Text("username", style: TextStyle(color: Colors.blue)),
                  ],
                ),

                horizontalPadding(5,),

                Row(
                  children: [
                    const Icon(Icons.info_outline, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    const Text("Details"),
                  ],
                ),
              ],
            ),

            // Time Ago
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                widget.timeAgo?? '2 min ago',
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }
}
