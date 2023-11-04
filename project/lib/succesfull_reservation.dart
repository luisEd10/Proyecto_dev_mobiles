import 'package:flutter/material.dart';

class SuccesfullReservation extends StatelessWidget {
  const SuccesfullReservation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('reservation'),
      ),
      body: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text("Congratulations you have booked parking spot", style: TextStyle(fontSize: 50, color:Colors.blue.shade400),)
            ),
            SizedBox(
              width: 350,
              child: MaterialButton(
                color: Colors.blue,
                height: 70,
                onPressed: (){},
                child: Text("Use Google Maps to go to your parking spot"),
              ),
            ),
            SizedBox(
              width: 350,
              child: MaterialButton(
                onPressed: (){},
                height: 70,
                color: Colors.indigo[100],
                child: Text("Set a reminder with Google Reminders"),
              ),
            ),
            SizedBox(
              width: 350,
              child: MaterialButton(
                onPressed: (){},
                height: 70,
                color: Colors.red,
                child: Text("Cancel your reservation"),
              ),
            )
          ],
        ),
      ),
    );
  }
}