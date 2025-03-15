import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/features/crisis/data/model/generated_crisis_response.dart';
import 'package:salam_hack/features/crisis/data/model/report_crisis_request.dart';
import '../../data/repo/crisis_repo.dart';
import 'crisis_state.dart';

class CrisisCubit extends Cubit<CrisisState> {
  final CrisisRepo crisisRepo;
  CrisisCubit({required this.crisisRepo}) : super(CrisisState.initial());

  TextEditingController descriptionController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController typeController = TextEditingController();

  bool isResolved = false;

  void emiCrisisSuccess() async {
    emit(CrisisState.loading());
    var response = await crisisRepo.getAllCrisis();
    response.when(success: (crisis) async {
      emit(CrisisState.success(crisis.reversed));
    }, failure: (error) {
      emit(CrisisState.error(error: error.message ?? ''));
    });
  }

  void emitAddNewCrisis() async {
    emit(CrisisState.loading());
    var response = await crisisRepo.reportCrisisWithAI(ReportCrisisRequestBody(
        userDescription: descriptionController.text,
        city: locationController.text));

    response.when(
      success: (generatedCrisisResponse) {
        emit(CrisisState.generated(crisis: generatedCrisisResponse));
      },
      failure: (error) {
        emit(CrisisState.error(error: error.message ?? ''));
      },
    );
  }

  void emitResolved(String id) async {
    emit(CrisisState.loading());
    var response = await crisisRepo.markCrisisAsResolved(id);

    response.when(
      success: (generatedCrisisResponse) {
        emit(CrisisState.resolved(crisis: generatedCrisisResponse));
      },
      failure: (error) {
        emit(CrisisState.error(error: error.message ?? ''));
      },
    );
  }

  @override
  Future<void> close() {
    descriptionController.dispose();
    typeController.dispose();
    locationController.dispose();
    return super.close();
  }
}
