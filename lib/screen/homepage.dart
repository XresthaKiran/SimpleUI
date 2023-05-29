import 'package:flutter/material.dart';
import 'package:go/screen/LogPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI',
      theme: ThemeData(
        primarySwatch: Colors.green),
        
      
     
      themeMode: ThemeMode.light,
      
    
      routes: {
         '/':(context) => LogInPage(),
        '/home':(context) => Homepage()
      },
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test APP'),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://bestprofilepictures.com/wp-content/uploads/2021/08/Amazing-Profile-Picture-for-Facebook.jpg"),
              backgroundColor: Colors.white10,
              radius: 80,
            )
            ),
            SizedBox(height: 5,),
            Text('Username',style: TextStyle(color: Color.fromARGB(255, 64, 69, 112)  , fontSize: 25  ,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 80,),
            Text('Welcome to Homepage')
            
        ]
            ),
          
          );
        
      
    
  }
}
