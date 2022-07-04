part of 'get_event_cubit.dart';

@freezed
class GetEventState with _$GetEventState {
  const factory GetEventState.loading() = _loading;
  const factory GetEventState.success(List<Event> res) = _success;
  const factory GetEventState.failure(MainFailure failure) = _failure;
}
