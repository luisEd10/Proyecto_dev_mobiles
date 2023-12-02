import 'package:flutter/material.dart';
import 'package:project/main_page.dart';

class SuccesfullReservation extends StatelessWidget {
  SuccesfullReservation({super.key});
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: Text('reservation'),
      ),
      body: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 420,
              child: Text("Congratulations you have booked parking spot", style: TextStyle(fontSize: 50, foreground: Paint()..shader = linearGradient),)
            ),
            SizedBox(
              width: 350,
              child: MaterialButton(
                color: Colors.blue,
                height: 70,
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage()));
                },
                //child: Text("Use Google Maps to go to your parking spot"),
                child: Text("Back to home page"),
              ),
            ),
            SizedBox(
              height: 5,
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
              height: 5,
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