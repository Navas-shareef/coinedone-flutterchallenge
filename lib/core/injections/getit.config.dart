// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/date%20shedules/data/data_source/events_datasources.dart'
    as _i4;
import '../../features/date%20shedules/data/repository/event_repo.dart' as _i3;
import '../../features/date%20shedules/presentation/cubits/addevent/add_event_cubit.dart'
    as _i6;
import '../../features/date%20shedules/presentation/cubits/GetEventCubit/get_event_cubit.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.EventService>(() => _i4.ApiService());
  gh.factory<_i5.GetEventCubit>(
      () => _i5.GetEventCubit(get<_i3.EventService>()));
  gh.factory<_i6.AddEventCubit>(
      () => _i6.AddEventCubit(get<_i3.EventService>()));
  return get;
}
