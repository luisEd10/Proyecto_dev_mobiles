import 'package:flutter/material.dart';
import 'package:project/main_page.dart';
import 'package:project/succesfull_reservation.dart';

class ReservationDetail extends StatelessWidget {
  const ReservationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 204, 226),
      appBar: AppBar(
        title: Text('Reservation Details'),
      ),
      body: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //TODO: Google Maps

            Text("WS - 093",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.w800)),
            Text("Please choose schedule: From 01:00 to 01:00"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Other recommended parking spots:",
              style: TextStyle(
                  color: const Color.fromARGB(255, 10, 117, 240), fontSize: 18),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 5)),
              child: Text(
                  '''WS - 098 : Available on Your Schedule, 4 min from South Entrance
WN - 100 : Available on Your Schedule, 6 min from North Entrance
WT - 020 : Available on Your Schedule, 8 min from East Entrance'''),
            ),
            Text(
              "Remember that upon arrival you'll have to spend a couple minutes to provide an actualization on the following parking spots surrounding you",
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 5)),
              child: Text('''WS - 098 : State: Available, Last Updated : 1hr ago
WS - 092 : State: In Use, Last Updated : 2hr ago
WS - 094 : State: Available, Last Updated : 30min ago
WS - 097 : State: In Use, Last Updated : 1hr ago
WS - 096 : State: Available, Last Updated : 4hr ago
'''),
            ),
            SizedBox(
              width: 350,
              child: MaterialButton(
                color: Color.fromARGB(255, 85, 227, 232),
                height: 70,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SuccesfullReservation()));
                },
                child: Text(
                  "Book parking spot",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 350,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                height: 70,
                color: Colors.red,
                child: Text("Cancel",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
