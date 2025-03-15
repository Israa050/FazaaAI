
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_state.freezed.dart';

@freezed
class PostState<T> with _$PostState<T> {
  const factory PostState.initial() = _Initial;
  const factory PostState.loading() = Loading;
  const factory PostState.posts(T data) = Posts<T>;
  const factory PostState.error({required String error}) = Error;
  const factory PostState.addNewPost(T posts) = addNewPost<T>;
  
}
