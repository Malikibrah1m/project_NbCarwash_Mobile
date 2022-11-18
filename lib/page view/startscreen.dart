import 'package:flutter/material.dart';
import 'package:projectcarwash/page%20view/login.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SplashScreenView(
          navigateRoute: Login(),
          pageRouteTransition: PageRouteTransition.Normal,
          duration: 3000,
          imageSrc: "img/logo.png",
          imageSize: 150,
          text: "NB-Carwash",
          textType: TextType.NormalText,
          textStyle: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "Inter"),
          backgroundColor: Color(0xff8d8efc),
        ),
      ),
    );
  }
}
