import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/helper/show_dialog.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/themes/styles.dart';
import 'package:salam_hack/features/notifications/data/models/notification.dart';
import 'package:salam_hack/features/notifications/logic/cubit/notification_cubit.dart';
import 'package:salam_hack/features/notifications/logic/cubit/notification_state.dart';
import 'package:salam_hack/features/profile/logic/cubit/profile_cubit.dart';

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
  final ClsNotification notification;

  const NotificationTileTests({
    Key? key,
    required this.notification,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        if (notification.matchRequestId != null) {
                          print('Reject Match');
                          context.read<NotificationCubit>().emitRejectMatch(
                              notification.matchRequestId.toString());
                        }
                        print(' Out Reject Match');
                      },
                      icon: const Icon(Icons.cancel, color: Colors.red),
                      label: Text(
                        "Reject",
                        style: TextStyles.font14LightGrayRegular
                            .copyWith(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        disabledBackgroundColor: AppColors.primaryBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (notification.matchRequestId != null) {
                          print('Accept Match');
                          context.read<NotificationCubit>().emitAcceptMatch(
                              notification.matchRequestId.toString());
                        }
                        print(' Out Accept Match');
                      },
                      icon:
                          const Icon(Icons.check_circle, color: Colors.green),
                      label: Text(
                        "Accept",
                        style: TextStyles.font14LightGrayRegular
                            .copyWith(color: Colors.black),
                      ),
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
            if (type == "safety_check") // Show buttons only for match type
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        print('Safety Status');
                        context
                            .read<NotificationCubit>()
                            .emitCheckSafetyStatus(
                                'Not_Safe', notification.id.toString());
                      },
                      icon: const Icon(Icons.cancel, color: Colors.red),
                      label: Text(
                        "Not Safe",
                        style: TextStyles.font14LightGrayRegular
                            .copyWith(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        disabledBackgroundColor: AppColors.primaryBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        print('Safety Status');
                        context
                            .read<NotificationCubit>()
                            .emitCheckSafetyStatus(
                                'Safe', notification.id.toString());
                      },
                      icon:
                          const Icon(Icons.check_circle, color: Colors.green),
                      label: Text(
                        "I'm safe",
                        style: TextStyles.font14LightGrayRegular
                            .copyWith(color: Colors.black),
                      ),
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
