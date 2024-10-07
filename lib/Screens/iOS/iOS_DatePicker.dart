import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iOSDatePicker extends StatefulWidget {
  const iOSDatePicker({super.key});

  @override
  State<iOSDatePicker> createState() => _iOSDatePickerState();
}

class _iOSDatePickerState extends State<iOSDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("iOS Date Picker"),
        leading: BackButton(),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/iOSTime");
              },
              icon: const Icon(
                Icons.arrow_forward_rounded,
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 400,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (DateTime value) {},
            ),
          ),
        ],
      ),
    );
  }
}
