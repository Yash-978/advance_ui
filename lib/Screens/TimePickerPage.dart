import 'package:flutter/material.dart';

var timeController = TextEditingController();

class TimePickerPage extends StatefulWidget {
  const TimePickerPage({super.key});

  @override
  State<TimePickerPage> createState() => _TimePickerPageState();
}

class _TimePickerPageState extends State<TimePickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TimePicker'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/dialog");
              },
              icon: const Icon(
                Icons.arrow_forward_rounded,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff2a7f62),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                timeController.text.isEmpty
                    ? "Select Date"
                    : timeController.text,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: .75),
              ), // Button ka text
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2a7f62),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                label: const Text(
                  'Select Date',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  TimeOfDay? time = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (time != null) {
                    setState(() {
                      timeController.text = time.format(context);
                    });
                  }
                },
                icon: const Icon(
                  Icons.date_range_rounded,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
