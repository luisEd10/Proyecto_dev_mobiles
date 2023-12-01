import 'package:flutter/material.dart';

class DatabaseUpdate extends StatelessWidget {
  DatabaseUpdate({super.key});

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color.fromARGB(255, 218, 68, 68), Color.fromARGB(255, 139, 2, 2)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    bool light = true;
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        title: Text('Database update'),
      ),
      body: Column(
        children: [
          Text("Perfect! you have arrived to ITESO parking, please head to your parking spot", style: TextStyle(fontSize: 50, foreground: Paint()..shader = linearGradient)),
          SizedBox(height: 20),
          Text("please use some minutes to carefully double check the state of this parking spots next to yours", style: TextStyle(fontWeight: FontWeight.bold),),
          Text("Switch to green if its free, switch to red it its taken", style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            children: [
              Text("WS-098"),
              Switch(
                value: light, 
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                onChanged: (bool value){

                }
              )
            ],
          ),
          Row(
            children: [
              Text("WS-092"),
              Switch(
                value: light, 
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                onChanged: (bool value){

                }
              )
            ],
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: 350,
            child: MaterialButton(
              onPressed: (){},
              height: 70,
              color: Colors.indigo,
              child: Text("Submit", style: TextStyle(color: Colors.white),)
            ),
          )
        ],
      ),
    );
  }
}