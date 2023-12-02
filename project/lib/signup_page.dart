import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/bloc/auth_bloc.dart';
import 'package:project/login_page.dart';
import 'package:project/main_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: ListView(
        children:[ Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Text(
                "SIGN UP",
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Create an account",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm password',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<AuthBloc>(context).add(RegisterAuthEvent(email: emailController.text, password: passwordController.text));
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () async{
                try{
                  await Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                  print("test");
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage()));
                }catch(e){
                  print("error: $e");
                }
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
        ),]
      ),
    );
  }
}
