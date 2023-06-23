import 'package:flutter/material.dart';
import 'homepage.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String value = '', pass = '';
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 248, 248),
        body: Container(
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  SizedBox(
                    height: 50,
                    child: Image.asset(
                      'assets/1.png',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Username can not be empty';
                        }
                        return null;
                      },
                      onChanged: (val) {
                        setState(() {
                          value = val;
                        });
                      },
                      decoration: InputDecoration(
                          hintText: 'Username',
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.all(18),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 3, 20, 20),
                    child: TextFormField(
                      obscureText: true,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Password can not be empty';
                        } else if (text.length < 8) {
                          return 'Password length should be more than 8';
                        }
                        return null;
                      },
                      onChanged: (val) {
                        setState(() {
                          pass = val;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.all(18),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate() &&
                          value == 'Kiran' &&
                          pass == 'Shrestha') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepage(value)));
                        //Navigator.pushNamed(context, '/home');
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                title: Text('Login failed'),
                                content:
                                    Text('Username or Password is incorrect')));
                      }
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)))),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
