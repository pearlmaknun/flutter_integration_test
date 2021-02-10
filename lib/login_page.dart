import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login'),
      ),
      body: Center(
        child: Container(
          height: 300.0,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'email'
                ),
                key: Key('email'),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'password'
                ),
                obscureText: true,
                key: Key('password'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                    key: Key('login_button'),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(child: Text('Login'))), onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
