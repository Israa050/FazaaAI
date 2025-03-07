
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crisis_state.freezed.dart';

@freezed
class CrisisState<T> with _$CrisisState<T> {
  const factory CrisisState.initial() = _Initial;
  const factory CrisisState.loading() = Loading;
  const factory CrisisState.success(T data) = CrisisSuccess<T>;
  const factory CrisisState.error({required String error}) = CrisisError;
}
