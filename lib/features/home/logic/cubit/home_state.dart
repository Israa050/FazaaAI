
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
const factory HomeState.posts(T data) = Posts<T>;
  const factory HomeState.error({required String error}) = Error;
  
}
