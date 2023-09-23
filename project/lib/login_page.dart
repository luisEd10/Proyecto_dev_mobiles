import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Column(
          children: [
            Icon(Icons.account_circle, size: 100,),
            SizedBox(height: 50,),
            TextField(
              //controller
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Email")
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              //controller
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Password")
              ),
            ),
            SizedBox(height: 50,),
            SizedBox(
              height: 30,
              width: 200,
              child: MaterialButton(
                onPressed: () {},
                child: Text("Login", style: TextStyle(color: Colors.white),),
                color: Colors.indigo,
                
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Text("New user? Create Account")
          ],
        )
      );
  }
}