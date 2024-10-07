import 'package:flutter/material.dart';

String selectGroup = 'Choice 1';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dialog"),
        leading: BackButton(),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/iOSDate");
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
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Phone Ringtone'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('None'),
                            leading: Radio<String>(
                              value: "Choice",
                              groupValue: selectGroup,
                              onChanged: (String? value) {
                                setState(() {
                                  selectGroup = value!;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: Text('Callisto'),
                            leading: Radio<String>(
                              value: "Choice",
                              groupValue: selectGroup,
                              onChanged: (String? value) {
                                setState(() {
                                  selectGroup = value!;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: Text('Ganymede'),
                            leading: Radio<String>(
                              value: "Choice",
                              groupValue: selectGroup,
                              onChanged: (String? value) {
                                setState(() {
                                  selectGroup = value!;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: Text('Ganymede'),
                            leading: Radio<String>(
                              value: "Luna",
                              groupValue: selectGroup,
                              onChanged: (String? value) {
                                setState(() {
                                  selectGroup = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff2a7f62),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: .75),
                          ), // Button ka text
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff2a7f62),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Ok',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: .75),
                          ), // Button ka text
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff2a7f62),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'SHOW DIALOG',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: .75),
              ), // Button ka text
            ),
          ],
        ),
      ),
    );
  }
}
