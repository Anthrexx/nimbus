

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 40,),
          TextField(
            controller: emailController,
            cursorColor: Colors.white,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Email',

            ),
          ),
          SizedBox(height: 4),
          TextField(
            controller: passwordController,
            cursorColor: Colors.white,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: 'password',

            ),
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),

            ),
            icon: Icon(Icons.lock_open_rounded),
            label: Text('signin'),
            onPressed: () {},
          ),
        ],
      ),
    );
  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email :emailController.text.trim(),
      password :passwordController.text.trim(),
    );
  }
  }

