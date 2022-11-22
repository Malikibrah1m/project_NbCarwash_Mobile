import 'package:flutter/material.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({super.key});

  @override
  State<Transaksi> createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(20)),
              Text(
                "Transaki",
              )
            ],
          ),
        ),
      ),
    );
  }
}
