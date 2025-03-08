import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/models/shelter.dart';
import 'package:salam_hack/features/shelters/data/repo/shelters_repo.dart';
import 'package:salam_hack/features/shelters/logic/cubit/shelter_state.dart';

class ShelterCubit extends Cubit<ShelterState> {
  final SheltersRepo sheltersRepo;
  ShelterCubit({required this.sheltersRepo}) : super(ShelterState.initial());


  void emitSheltersListLoaded()async{
    emit(ShelterState.loading());
     var response = await sheltersRepo.getAllShelters();
    response.when(
      success: (shelters)async{
        emit(ShelterState.loaded(shelters));
      },
       failure: (error){
          emit(ShelterState.error(error: error.message?? ''));
       });
  }

   void emitAddNewShelter()async{
    emit(ShelterState.loading());
     var response = await sheltersRepo.addNewShelter(
      Shelter(
        
      )
     );
    response.when(
      success: (shelters)async{
        emit(ShelterState.loaded(shelters));
      },
       failure: (error){
          emit(ShelterState.error(error: error.message?? ''));
       });
  }
}
