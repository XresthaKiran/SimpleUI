import 'package:flutter/material.dart';
import 'package:go/screen/LogPage.dart';
import 'package:go/widget/drawer.dart';
import 'package:go/widget/theme.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI',
      theme: MyTheme.lightTheme(context),
     darkTheme: MyTheme.darkTheme(context),
      home:LogInPage(),
    );
  }
}

class Homepage extends StatelessWidget {
  final String value;
  Homepage(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test APP'),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          Center(
              child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://bestprofilepictures.com/wp-content/uploads/2021/08/Amazing-Profile-Picture-for-Facebook.jpg"),
            backgroundColor: Colors.white10,
            radius: 80,
          )),
          SizedBox(
            height: 5,
          ),
          Text(
            '$value',
            style: TextStyle(
                color: Color.fromARGB(255, 64, 69, 112),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 80,
          ),
          Text('Welcome to Homepage')
        ]),
      ),
    );
  }
}
