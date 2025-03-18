
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salam_hack/features/post/data/models/post_response.dart';

part 'post_state.freezed.dart';

@freezed
class PostState<T> with _$PostState<T> {
  const factory PostState.initial() = _Initial;
  const factory PostState.loading() = Loading;
  const factory PostState.posts(T data) = Posts<T>;
  const factory PostState.error({required String error}) = Error;
  const factory PostState.addNewPost(PostResponse post) = addNewPost;
  const factory PostState.markAsDone(PostResponse post) = MarkAsDone;
  const factory PostState.match(dynamic data) = Match;
  
}
