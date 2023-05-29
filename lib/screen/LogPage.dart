import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.fromLTRB(1.00, 80, 200, 80),
            child: Image.asset(
              'assets/1.png',
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Username',
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.all(18),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 3, 20, 20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.all(18),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0))),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.green,
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}
