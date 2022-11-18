import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff8d8ffd),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.logout_outlined, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
    ));
  }
}
