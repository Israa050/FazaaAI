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

  void emitAcceptMatch(String id)async{
        emit(NotificationState.loading());
    var response = await notificationRepo.acceptMatchRequest(id);
    response.when(
      success: (message) {
        emit(NotificationState.success(message));
      },
      failure: (error) {
        emit(Error(error: error.message?? ''));
      },
    );
  }

   void emitRejectMatch(String id)async{
        emit(NotificationState.loading());
    var response = await notificationRepo.rejectMatchRequest(id);
    response.when(
      success: (message) {
        emit(NotificationState.success(message));
      },
      failure: (error) {
        emit(Error(error: error.message?? ''));
      },
    );
  }

  void emitCheckSafetyStatus(String status)async{
        emit(NotificationState.loading());
    var response = await notificationRepo.checkSafetyStatus(status);
    response.when(
      success: (message) {
        emit(NotificationState.success(message));
      },
      failure: (error) {
        emit(Error(error: error.message?? ''));
      },
    );
  }
}
