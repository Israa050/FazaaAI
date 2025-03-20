import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/features/profile/data/repo/profile_repo.dart';
import 'package:salam_hack/features/profile/logic/cubit/profile_state.dart';
import 'package:salam_hack/main.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileRepo profileRepo;
  ProfileCubit(this.profileRepo) : super(ProfileState.initial());

  void emitProfileState() async {
    emit(ProfileState.loading());

    var response = await profileRepo.getUserProfile(currentUser!.id.toString());

    response.when(
      success: (profile) {
        emit(ProfileState.success(profile));
      },
      failure: (error) {
        emit(ProfileState.error(message: error.message?? ''));
      },
    );
  }


  void emitLeaderBoardLoaded()async{
     emit(ProfileState.loading());

    var response = await profileRepo.getLeaderBoard();

    response.when(
      success: (leaderboard) {
        emit(ProfileState.success(leaderboard));
      },
      failure: (error) {
        emit(ProfileState.error(message: error.message?? ''));
      },
    );
  }

  
}
