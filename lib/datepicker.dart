import 'package:flutter/material.dart';

class datepickerScreen extends StatefulWidget {
  const datepickerScreen({super.key});

  @override
  State<datepickerScreen> createState() => _datepickerScreenState();
}

class _datepickerScreenState extends State<datepickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Select  Date",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? datePicked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      lastDate: DateTime(2024));

                  if (datePicked != null) {
                    print(
                        'Date selected : ${datePicked.day} : ${datePicked.month} : ${datePicked.year}');
                  }
                },
                child: Text("Show")),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? pickedTime =  await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.dial,
                  );

                  if(pickedTime!=null){
                    print('Time selected : ${pickedTime.hour} : ${pickedTime.minute} ');
                  }
                },
                child: Text("Selected Time")),
          ],
        ),
      ),
    );
  }
}
