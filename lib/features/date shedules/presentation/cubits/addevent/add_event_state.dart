part of 'add_event_cubit.dart';

@freezed
class AddEventState with _$AddEventState {
  const factory AddEventState.loading() = _loading;
  const factory AddEventState.success(Event event) = _success;
  const factory AddEventState.failed(MainFailure failure) = _failed;
}
