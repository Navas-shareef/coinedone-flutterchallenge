import 'package:bloc/bloc.dart';
import 'package:coinedone/core/errors/failure.dart';
import 'package:coinedone/features/date%20shedules/data/models/event_model.dart';
import 'package:coinedone/features/date%20shedules/data/repository/event_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_event_cubit.freezed.dart';
part 'add_event_state.dart';

@injectable
class AddEventCubit extends Cubit<AddEventState> {
  final EventService _eventService;
  AddEventCubit(this._eventService) : super(AddEventState.loading());

  void addEvent(Event inputEvent) async {
    emit(AddEventState.loading());
    var res = await _eventService.addEvent(inputEvent);
    res.fold((failed) => emit(AddEventState.failed(failed)),
        (result) => emit(AddEventState.success(result)));
  }
}
