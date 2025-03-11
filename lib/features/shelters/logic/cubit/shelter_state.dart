
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shelter_state.freezed.dart';

@freezed
class ShelterState<T> with _$ShelterState<T> {
  const factory ShelterState.initial() = _Initial;
  const factory ShelterState.loading() = Loading;
  const factory ShelterState.loaded(T data) = SheltersSuccess<T>;
  const factory ShelterState.error({required String error}) = SheltersError;
  const factory ShelterState.addNewShelter(T data) = AddNewShelter<T>;
}
