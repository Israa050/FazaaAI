import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo/crisis_repo.dart';
import 'crisis_state.dart';


class CrisisCubit extends Cubit<CrisisState> {
  final CrisisRepo crisisRepo;
  CrisisCubit({required this.crisisRepo}) : super(CrisisState.initial());


  void emiCrisisSuccess()async{
    emit(CrisisState.loading());

    var response = await crisisRepo.getAllCrisis();
    response.when(
      success: (crisis)async{
        emit(CrisisState.success(crisis));
      },
       failure: (error){
          emit(CrisisState.error(error: error.message?? ''));
       });

  }
}
