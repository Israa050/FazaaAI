



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/features/notifications/logic/cubit/notification_cubit.dart';
import 'package:salam_hack/features/notifications/logic/cubit/notification_state.dart';
import 'package:salam_hack/features/notifications/presentation/widgets/notification_list_view.dart';
import 'package:salam_hack/main.dart';
import '../../../../core/widgets/loading.dart';

class NotificationsBlocBuilder extends StatefulWidget {
  const NotificationsBlocBuilder({super.key});

  @override
  State<NotificationsBlocBuilder> createState() => _NotificationsBlocBuilderState();
}

class _NotificationsBlocBuilderState extends State<NotificationsBlocBuilder> {

  @override
  void initState() {
    //context.read<PostCubit>().getCurrentUser();
    context.read<NotificationCubit>().emitLoadAllNotifications(currentUser!.id.toString());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: ()async {
        context.read<NotificationCubit>().emitLoadAllNotifications(currentUser!.id.toString());
      },
      child: BlocBuilder<NotificationCubit, NotificationState>(builder: (context,state){
      
        if(state is Success){
          return NotificationListView(notifications: state.data);
        }else if (state is Error){
          return setupError(state.error);
        }
        return LoadingPage();
      
      }),
    );
  }

   Widget setupError(String message) {
    return Center(child: Text('Error $message'));
  }
}