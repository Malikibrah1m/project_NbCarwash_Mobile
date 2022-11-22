import 'package:flutter/material.dart';

class DetailTransaksi extends StatefulWidget {
  const DetailTransaksi({super.key});

  @override
  State<DetailTransaksi> createState() => _DetailTransaksiState();
}

class _DetailTransaksiState extends State<DetailTransaksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(20)),
              Text(
                "Detail Transaksi",
              )
            ],
          ),
        ),
      ),
    );
  }
}
