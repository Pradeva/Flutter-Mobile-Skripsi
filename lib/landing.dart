// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myapp/signup.dart';
import 'package:provider/provider.dart';
import 'signin.dart';
import 'user_data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => UserData(),
        child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/landing.png',
              width: 300,
              height: 300,
            ),
            SizedBox(height: 40),
            Padding(padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text("Make your testing easy!", style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              )),
            ),
            SizedBox(height: 40),
            ElevatedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage())
              );
            }, child: Text('Sign In', style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(350, 50)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF27DEBF)),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage())
              );
            }, child: Text('Sign Up', style: TextStyle(
              color: Color(0xFF27DEBF),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(350, 50)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color(0xFF27DEBF), width: 2.0)
                    )),
                backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF1A1A1A)),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
