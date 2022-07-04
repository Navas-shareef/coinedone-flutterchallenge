import 'package:coinedone/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../models/event_model.dart';
import '../repository/event_repo.dart';

@LazySingleton(as: EventService)
class ApiService implements EventService {
  final Dio _dio = Dio();
  @override
  Future<Either<MainFailure, List<Event>>> getEvents() async {
    try {
      final Response response = await _dio
          .get('https://alpha.classaccess.io/api/challenge/v1/schedule');
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'] as List<dynamic>;

        final result = data.map((e) => Event.fromJson(e)).toList();

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure(message: 'server failure'));
      }
    } catch (error) {
      return const Left(MainFailure.clientFailure(message: 'error occured'));
    }
  }

  Future<Either<MainFailure, Event>> addEvent(Event event) async {
    try {
      final Response response = await _dio.post(
          'https://alpha.classaccess.io/api/challenge/v1/save/schedule',
          data: {
            "name": event.name,
            "startTime": event.startTime,
            "endTime": event.endTime,
            "date": event.date
          });

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];

        final result = Event.fromJson(data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure(message: 'server failure'));
      }
    } catch (error) {
      return const Left(
          MainFailure.duplicationFailure(message: 'duplication error'));
    }
  }
}
