
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salam_hack/features/profile/data/models/leaderboard_response.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = Loading;
  const factory ProfileState.success(List<LeaderboardResponse> data) = Success;
  const factory ProfileState.error({required String message}) = Error;
  const factory ProfileState.userProfile(T data) = UserProfile<T>;
}
