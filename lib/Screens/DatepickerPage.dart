import 'package:flutter/material.dart';

var dateController = TextEditingController();

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({super.key});

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("DatePicker"),
        leading: BackButton(),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/timepicker");
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: dateController,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () async {
                        DateTime? dateTime = await showDatePicker(
                          context: context,
                          firstDate: DateTime(1947),
                          lastDate: DateTime(2025),
                          initialDate: DateTime.now(),
                        );
                        if (dateTime != null) {
                          setState(() {
                            dateController.text =
                                dateTime.toString().split(" ")[0];
                          });
                        }
                      },
                      icon: const Icon(
                        Icons.date_range_rounded,
                      )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
