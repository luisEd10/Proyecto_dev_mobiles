import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
        ),
        body: Column(children: [
            Text("SIGN UP", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),

            Text("Create an account", style: TextStyle(color: Colors.grey),),

            SizedBox(height: 20.0),

            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey),
              ),),
              SizedBox(height: 10.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm password',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
             SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                //SIGN UP BUTTON LOGIC
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                //NAVIGATOR PUSH TO LOGIN PAGE
              },
              child: Text(
                'Already have an account? Login',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
              ),
        ],
        ),
      );
  }
}