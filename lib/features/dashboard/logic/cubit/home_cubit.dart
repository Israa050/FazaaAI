import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/helper/shared_pref_helper.dart';
import 'package:salam_hack/features/dashboard/data/home_repo.dart';
import 'package:salam_hack/features/dashboard/data/models/saftey_check_request_body.dart';
import 'package:salam_hack/features/dashboard/logic/cubit/home_state.dart';
import 'package:salam_hack/main.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(HomeState.initial());

  void emitLoadUserData() async {
    emit(Loading());

    var response = await homeRepo.currentUser();

    response.when(
      success: (user) {
        emit(HomeState.succuss(user));
        print("Current User: ${user.username}");
        currentUser = user;
      },
      failure: (error) {
        emit(HomeState.error(message: error.message ?? ''));
      },
    );
  }

  void emitSafetyCheck(String safetyStatus)async{
     emit(Loading());

    var response = await homeRepo.getSafetyCheck(safetyStatus);

    response.when(
      success: (safetyCheck) {
        emit(SafetyCheck(safetyCheck));
      },
      failure: (error) {
        emit(HomeState.error(message: error.message ?? ''));
      },
    );
  }

   void logout() async {
    await SharedPrefHelper.clearAllSecuredData();
  }


}
