import 'package:advance_ui/Screens/DatepickerPage.dart';
import 'package:advance_ui/Screens/iOS/iOS_TimePicker.dart';
import 'package:flutter/material.dart';

import 'Screens/DialogPage.dart';
import 'Screens/TimePickerPage.dart';
import 'Screens/iOS/iOS_DatePicker.dart';
import 'Screens/iOS/iOS_DialogSheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const DatePickerPage(),
        '/timepicker': (context) => const TimePickerPage(),
        '/dialog': (context) => const DialogPage(),
        '/iOSDate': (context) => const iOSDatePicker(),
        '/iOSTime': (context) => const iOSTimePicker(),
        '/iOSDialog': (context) => const iOSDialogSheet(),
      },
    );
  }
}
