import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/features/notifications/data/repo/notification_repo.dart';
import 'package:salam_hack/features/notifications/logic/cubit/notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationRepo notificationRepo;
  NotificationCubit(this.notificationRepo) : super(NotificationState.initial());

  void emitLoadAllNotifications(String id) async {
    emit(NotificationState.loading());
    var response = await notificationRepo.getAllNotifications(id);

    response.when(
      success: (notifications) {
        emit(NotificationState.success(notifications.reversed.toList()));
      },
      failure: (error) {
        emit(Error(error: error.message?? ''));
      },
    );
  }
}
