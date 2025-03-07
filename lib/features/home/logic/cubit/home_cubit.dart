import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/features/home/data/repo/home_repo.dart';
import 'package:salam_hack/features/home/logic/cubit/home_state.dart';



class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit({required this.homeRepo}) : super(HomeState.initial());

  void emitPostsListLoadedState()async{
    var response = await homeRepo.getAllPosts();
    response.when(
      success: (posts)async{
        emit(HomeState.posts(posts));
      },
       failure: (error){
          emit(HomeState.error(error: error.message?? ''));
       });
  }
}
