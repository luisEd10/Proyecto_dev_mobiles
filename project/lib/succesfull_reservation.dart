import 'package:flutter/material.dart';

class SuccesfullReservation extends StatelessWidget {
  const SuccesfullReservation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('reservation'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Congratulations you have booked parking spot", style: TextStyle(),),
          MaterialButton(
            color: Colors.blue,
            height: 70,
            onPressed: (){},
            child: Text("Use Google Maps to go to your parking spot"),
          ),
          MaterialButton(
            onPressed: (){},
            height: 70,
            color: Colors.indigo[100],
            child: Text("Set a reminder with Google Reminders"),
          ),
          MaterialButton(
            onPressed: (){},
            height: 70,
            color: Colors.red,
            child: Text("Cancel your reservation"),
          )
        ],
      ),
    );
  }
}