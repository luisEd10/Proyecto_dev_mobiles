import 'package:flutter/material.dart';

class DatabaseUpdate extends StatelessWidget {
  const DatabaseUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    bool light = true;
    return Scaffold(
      appBar: AppBar(
        title: Text('Database update'),
      ),
      body: Column(
        children: [
          Text("Perfect! you have arrived to ITESO parking, please head to your parking spot"),
          Text("please use some minutes to carefully double check the state of this parking spots next to yours"),
          Text("Switch to green if its free, switch to red it its taken"),
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
          MaterialButton(
            onPressed: (){},
            child: Text("Submit")
          )
        ],
      ),
    );
  }
}