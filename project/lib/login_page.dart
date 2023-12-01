import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/bloc/auth_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
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
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Email")
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              //controller
              controller: passwordController,
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
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context).add(EmailAuthEvent(email: emailController.text, password: passwordController.text));
                },
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