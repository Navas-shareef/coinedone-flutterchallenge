import 'package:coinedone/core/errors/failure.dart';
import 'package:coinedone/features/date%20shedules/data/models/event_model.dart';
import 'package:dartz/dartz.dart';

abstract class EventService {
  Future<Either<MainFailure, List<Event>>> getEvents();
  Future<Either<MainFailure, Event>> addEvent(Event event);
}
