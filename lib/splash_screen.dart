import 'package:flutter/material.dart';
import './web_view.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    displaySplash();
    super.initState();
  }

  displaySplash() {
    Timer(Duration(seconds: 3), () async {
      // if (EcommerceApp.auth.currentUser != null) {
      Route route = MaterialPageRoute(builder: (_) => WebViewStore());
      Navigator.pushReplacement(context, route);
      // } else {
      //   Route route = MaterialPageRoute(builder: (_) => AuthenticScreen());
      //   Navigator.pushReplacement(context, route);
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueGrey, Colors.deepPurpleAccent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/welcome.png'),
              SizedBox(height: 35.0),
              Text(
                'Welcome To Mariam Store',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
