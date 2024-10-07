import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var iOsTimeController = TextEditingController();
Duration? iOsTime;

class iOSTimePicker extends StatefulWidget {
  const iOSTimePicker({super.key});

  @override
  State<iOSTimePicker> createState() => _iOSTimePickerState();
}

class _iOSTimePickerState extends State<iOSTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("iOS Time Picker"),
        leading: BackButton(),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/iOSDialog");
              },
              icon: const Icon(
                Icons.arrow_forward_rounded,
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${iOsTimeController.text}",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
              height: 400,
              child: CupertinoTimerPicker(
                onTimerDurationChanged: (value) {
                  appleTimePicker(value);
                },
              )),
        ],
      ),
    );
  }

  void appleTimePicker(Duration value) {
    iOsTime = value;
    if (iOsTime != null) {
      setState(() {
        iOsTimeController.text =
            iOsTime.toString().split('.').first.padLeft(8, "0");
      });
    }
  }
}
