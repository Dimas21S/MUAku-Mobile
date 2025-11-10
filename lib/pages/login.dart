import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(color: Colors.deepPurple),

            const SizedBox(height: 10),
            Text("Username"),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter your username",
                border: UnderlineInputBorder(),
                icon: Icon(Icons.account_circle_outlined),
              ),
            ),
            Text("Email"),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter your email address",
                border: UnderlineInputBorder(),
                icon: Icon(Icons.email),
              ),
            ),
            Text("Password"),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter your password",
                border: UnderlineInputBorder(),
                icon: Icon(Icons.lock),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: () => {}),
    );
  }
}
