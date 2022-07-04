import 'package:coinedone/features/date%20shedules/data/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:month_year_picker/month_year_picker.dart';

import '../../../../././core/utils/string_utils.dart';
import '../../../../core/utils/colors.dart';
import '../cubits/GetEventCubit/get_event_cubit.dart';
import '../widgets/add_event_widget.dart';

class ViewSchedulesPage extends StatefulWidget {
  const ViewSchedulesPage({Key? key}) : super(key: key);

  @override
  State<ViewSchedulesPage> createState() => _ViewSchedulesPageState();
}

class _ViewSchedulesPageState extends State<ViewSchedulesPage> {
  DateTime selectedDate = DateTime.now();
  int selectedDay = 1;

  @override
  Widget build(BuildContext context) {
    int noOfDays = daysInMonth(selectedDate);
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<GetEventCubit>().fetchEvents();
    });

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 25, left: 18, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: Text(
                      selectedDate.toString().toDate(),
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: textColor),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 60,
                    child: Center(
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final currentDate =
                                selectedDate.add(Duration(days: index));

                            final dateName =
                                DateFormat('E').format(currentDate);

                            return Column(
                              children: [
                                Text(
                                  dateName,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: dayTextColor),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedDay = index + 1;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundColor: selectedDay == index + 1
                                        ? mainColor
                                        : Colors.white,
                                    child: Text(
                                      '${index + 1}',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: selectedDay == index + 1
                                              ? Colors.white
                                              : textColor),
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 10,
                              ),
                          itemCount: noOfDays),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 60),
                  height: MediaQuery.of(context).size.height * 0.70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: eventContainerColor),
                  padding: const EdgeInsets.only(top: 27, left: 39),
                  child: BlocBuilder<GetEventCubit, GetEventState>(
                    builder: (context, state) {
                      return state.when(
                          loading: () => const Center(
                                child: CircularProgressIndicator(),
                              ),
                          success: (res) {
                            var data = res;
                            List<Event>? eventList = [];

                            for (int i = 0; i < res.length; i++) {
                              print(res[i].date);
                              print(
                                  '${res[i].date!.split('/')[0]}-${selectedDay.toString().padLeft(2, '0')} ${res[i].date!.split('/')[1].toString()}-${selectedDate.month.toString()}');
                              if (res[i].date!.split('/')[0].toString() ==
                                      selectedDay.toString().padLeft(2, '0') &&
                                  res[i].date!.split('/')[1].toString() ==
                                      selectedDate.month
                                          .toString()
                                          .padLeft(2, '0') &&
                                  res[i].date!.split('/')[2].toString() ==
                                      selectedDate.year.toString()) {
                                eventList.add(res[i]);
                              }
                            }

                            print(eventList.length);
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: eventList.length > 0
                                  ? ListView.builder(
                                      itemCount: eventList.length,
                                      itemBuilder: (context, index) => Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height: 77,
                                                            width: 55,
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    scheduleBoxColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30)),
                                                            child: Center(
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/icons/icon.svg',
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      index + 1 <
                                                              eventList.length
                                                          ? DashedLine(
                                                              colorValue:
                                                                  textColor,
                                                            )
                                                          : SizedBox()
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 20),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          '${eventList[index].startTime} - ${eventList[index].endTime}',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  dayTextColor),
                                                        ),
                                                        Text(
                                                          eventList[index]
                                                              .name
                                                              .toString(),
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: textColor),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ))
                                  : Center(
                                      child: Text(
                                        'No schedules available\nAdd new schedule',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: mainColor,
                                            fontSize: 16),
                                      ),
                                    ),
                            );
                          },
                          failure: (mes) {
                            return Center(
                              child: Text(mes.toString()),
                            );
                          });
                    },
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 20,
                  child: FloatingActionButton(
                    child: const Icon(Icons.add),
                    onPressed: () {
                      showModalBottomSheet<void>(
                        isScrollControlled: true,
                        isDismissible: false,
                        barrierColor: Colors.transparent,
                        context: context,
                        builder: (context) => AddEvent(),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }

  _selectDate(BuildContext context) async {
    final selected = await showMonthYearPicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1999),
      lastDate: DateTime(2050),
    );

    setState(() {
      selectedDate = selected!;
    });
  }

  int daysInMonth(DateTime date) => DateTimeRange(
          start: DateTime(date.year, date.month, 1),
          end: DateTime(date.year, date.month + 1))
      .duration
      .inDays;
}

class DashedLine extends StatelessWidget {
  const DashedLine({Key? key, required this.colorValue}) : super(key: key);
  final Color colorValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '|',
          style: TextStyle(color: colorValue),
        ),
        Text(
          '|',
          style: TextStyle(color: colorValue),
        ),
        Text(
          '|',
          style: TextStyle(color: colorValue),
        ),
      ],
    );
  }
}
