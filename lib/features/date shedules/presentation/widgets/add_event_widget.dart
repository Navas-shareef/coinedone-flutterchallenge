import 'package:coinedone/core/utils/colors.dart';
import 'package:coinedone/features/date%20shedules/data/models/event_model.dart';
import 'package:coinedone/features/date%20shedules/presentation/cubits/GetEventCubit/get_event_cubit.dart';
import 'package:coinedone/features/date%20shedules/presentation/cubits/addevent/add_event_cubit.dart';
import 'package:coinedone/features/date%20shedules/presentation/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';

import '../../../../././core/utils/string_utils.dart';

class AddEvent extends StatefulWidget {
  AddEvent({Key? key}) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

TextEditingController nameController = TextEditingController();

class _AddEventState extends State<AddEvent> {
  TimeOfDay startTime = TimeOfDay.now();
  TimeOfDay endTime = TimeOfDay.now();
  DateTime selectedDate = DateTime.now();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        color: Colors.white,
        height: 465,
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Container(
                padding: const EdgeInsets.only(top: 28, left: 24, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add Schedule',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: mainColor),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(Icons.close))
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: dayTextColor),
                    ),
                    SizedBox(
                      height: 53,
                      child: TextFormField(
                        validator: (value) => value != null && value.isEmpty
                            ? 'Add schedule name'
                            : null,
                        controller: nameController,
                        decoration: InputDecoration(
                          fillColor: scheduleBoxColor,
                          border: InputBorder.none,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: scheduleBoxColor, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Date & time',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: dayTextColor),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      color: scheduleBoxColor,
                      child: Column(
                        children: [
                          Material(
                            type: MaterialType.transparency,
                            child: ListTile(
                              onTap: () {
                                _selectTime(context, true);
                              },
                              title: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Start Time',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: textColor),
                                  ),
                                  Spacer(),
                                  Text(
                                    startTime.format(context),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: mainColor),
                                  ),
                                  Icon(Icons.chevron_right)
                                ],
                              ),
                            ),
                          ),
                          separator,
                          Material(
                            type: MaterialType.transparency,
                            child: ListTile(
                              onTap: () {
                                _selectTime(context, false);
                              },
                              title: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'End Time',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: textColor),
                                  ),
                                  Spacer(),
                                  Text(
                                    endTime.format(context),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: mainColor),
                                  ),
                                  Icon(Icons.chevron_right)
                                ],
                              ),
                            ),
                          ),
                          separator,
                          Material(
                            type: MaterialType.transparency,
                            child: ListTile(
                              onTap: () {
                                _selectDate(context);
                              },
                              title: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Date',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: textColor),
                                  ),
                                  Spacer(),
                                  Text(
                                    selectedDate.toString().toFormattedDate(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: mainColor),
                                  ),
                                  Icon(Icons.chevron_right)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    SizedBox(
                        height: 56,
                        width: double.infinity,
                        child: BlocListener<AddEventCubit, AddEventState>(
                          listener: (context, state) {
                            state.maybeWhen(
                                orElse: () {},
                                loading: () {
                                  return showDialog<void>(
                                    barrierColor: Colors.white.withOpacity(0.5),
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (context) => const Center(
                                      child: SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: CircularProgressIndicator(),
                                      ),
                                    ),
                                  );
                                },
                                failed: (mes) {
                                  if (mes.message == 'duplication error') {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).pop();
                                    return showDialog<void>(
                                      barrierColor:
                                          Colors.white.withOpacity(0.5),
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) =>
                                          Center(child: ErrorContainer()),
                                    );
                                  }
                                },
                                success: (event) {
                                  context.read<GetEventCubit>().fetchEvents();
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pop();
                                });
                          },
                          child: ElevatedButton(
                            onPressed: () {
                              final form = formKey.currentState!;
                              if (form.validate()) {
                                context.read<AddEventCubit>().addEvent(Event(
                                    name: nameController.text,
                                    startTime: startTime.format(context),
                                    endTime: endTime.format(context),
                                    date: selectedDate
                                        .toString()
                                        .toFormattedDate()));
                              } else {
                                print('enter details');
                              }
                            },
                            child: const Text(
                              'Add Schedule',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _selectTime(BuildContext context, bool isStartTime) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: startTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != startTime && isStartTime) {
      setState(() {
        startTime = timeOfDay;
      });
    } else if (timeOfDay != null && timeOfDay != startTime && !isStartTime) {
      setState(() {
        endTime = timeOfDay;
      });
    }
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2055),
    );
    setState(() {
      selectedDate = selected!;
    });
  }
}

Widget separator = const Padding(
  padding: EdgeInsets.only(left: 15),
  child: Divider(
    color: Colors.grey,
    thickness: 2,
    height: 1,
  ),
);
