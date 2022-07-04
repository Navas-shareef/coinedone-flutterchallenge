import 'package:coinedone/core/injections/getit.dart';
import 'package:coinedone/features/date%20shedules/presentation/pages/view_schedule_page.dart';
import 'package:coinedone/features/date%20shedules/presentation/widgets/behaviour_remove_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:month_year_picker/month_year_picker.dart';
import 'package:provider/provider.dart';

import 'features/date shedules/presentation/cubits/GetEventCubit/get_event_cubit.dart';
import 'features/date shedules/presentation/cubits/addevent/add_event_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<GetEventCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<AddEventCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        localizationsDelegates: const [
          MonthYearPickerLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        home: ScrollConfiguration(
            behavior: MyBehavior(), child: const ViewSchedulesPage()),
      ),
    );
  }
}
