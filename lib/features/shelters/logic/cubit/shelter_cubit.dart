import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/models/shelter.dart';
import 'package:salam_hack/features/shelters/data/repo/shelters_repo.dart';
import 'package:salam_hack/features/shelters/logic/cubit/shelter_state.dart';

class ShelterCubit extends Cubit<ShelterState> {
  final SheltersRepo sheltersRepo;
  ShelterCubit({required this.sheltersRepo}) : super(ShelterState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController capacityController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController currentOccupancyController = TextEditingController();
  TextEditingController facilitiesController = TextEditingController();
  TextEditingController contactInfoController = TextEditingController();

  List<Shelter>? myShelters;


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
    var newShelter =  Shelter(
        name: nameController.text,
        location: locationController.text,
        capacity: int.tryParse(capacityController.text)?? 0,
        currentOccupancy: int.tryParse(currentOccupancyController.text)??0,
        facilities: facilitiesController.text,
        contactInfo: contactInfoController.text
      );
     var response = await sheltersRepo.addNewShelter(newShelter);
    response.when(
      success: (shelters)async{
        emit(ShelterState.addNewShelter(shelters));
        myShelters?.insert(0, newShelter);
        emit(ShelterState.loaded(myShelters));
      },
       failure: (error){
          emit(ShelterState.error(error: error.message?? ''));
       });
  }
}
