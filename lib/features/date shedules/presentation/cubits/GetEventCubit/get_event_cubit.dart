import 'package:bloc/bloc.dart';
import 'package:coinedone/core/errors/failure.dart';
import 'package:coinedone/features/date%20shedules/data/models/event_model.dart';
import 'package:coinedone/features/date%20shedules/data/repository/event_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_event_cubit.freezed.dart';
part 'get_event_state.dart';

@injectable
class GetEventCubit extends Cubit<GetEventState> {
  final EventService _eventService;
  GetEventCubit(this._eventService) : super(const GetEventState.loading());

  void fetchEvents() async {
    emit(const GetEventState.loading());
    var result = await _eventService.getEvents();
    result.fold((failure) => emit(GetEventState.failure(failure)),
        (result) => emit(GetEventState.success(result)));
  }
}
