
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.succuss(T data) = Succuss<T>;
  const factory HomeState.error({required String message}) = Error;
  const factory HomeState.safetyCheck(T data) = SafetyCheck<T>;
}
