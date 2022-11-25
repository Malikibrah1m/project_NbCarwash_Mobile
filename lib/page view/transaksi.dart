import 'package:flutter/material.dart';
import 'package:projectcarwash/page%20view/startscreen.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({super.key});

  @override
  State<Transaksi> createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Card(
          child: ListTile(
            isThreeLine: true,
            leading: Icon(Icons.dataset, size: 56),
            title: Text(
              "Nama orang yang reservasi",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Inter",
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Plat nomor ",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Inter",
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Text(
                    "Tipe pencucian ",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Inter",
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Text(
                    "Total harga",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Inter",
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                      onPressed: () {},
                      label: Text("Verifikasi"),
                      icon: Icon(
                        Icons.check_circle,
                        color: Color(0xff00ff28),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
