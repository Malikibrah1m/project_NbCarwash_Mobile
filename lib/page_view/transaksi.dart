import 'package:flutter/material.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({super.key});

  @override
  State<Transaksi> createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  final TextEditingController _controller = new TextEditingController();
  var _value = "-1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  blurRadius: 8,
                  offset: Offset(0, 2),
                  color: Colors.grey.withOpacity(.25))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Transaksi",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Nama pelanggan',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Inter",
              ),
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Masukkan nama pelanggan',
                  hintStyle: TextStyle(
                      fontFamily: "Inter", fontWeight: FontWeight.w300)),
            ),
            SizedBox(height: 10),
            Text(
              'No. Handphone',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Inter",
              ),
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Masukkan nomor handphone pelanggan',
                  hintStyle: TextStyle(
                      fontFamily: "Inter", fontWeight: FontWeight.w300)),
            ),
            SizedBox(height: 10),
            Text(
              'Tipe pencucian',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Inter",
              ),
            ),
            SizedBox(height: 5),
            Container(
              // padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                borderRadius: BorderRadius.circular(10),
                value: _value,
                onTap: () {},
                items: const [
                  DropdownMenuItem(
                    child: Text(
                      "Pilih tipe pencucian",
                      style: TextStyle(
                          fontFamily: "Inter", fontWeight: FontWeight.w300),
                    ),
                    value: "-1",
                  ),
                  DropdownMenuItem(
                    child: Text("Tipe pencucian 1"),
                    value: "1",
                  ),
                  DropdownMenuItem(
                    child: Text("Tipe pencucian 2"),
                    value: "2",
                  ),
                  DropdownMenuItem(
                    child: Text("Tipe pencucian 3"),
                    value: "3",
                  ),
                  DropdownMenuItem(
                    child: Text("Tipe pencucian 4"),
                    value: "4",
                  ),
                ],
                onChanged: (v) {},
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Plat nomor',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Inter",
              ),
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Masukkan plat nomor kendaraan',
                  hintStyle: TextStyle(
                      fontFamily: "Inter", fontWeight: FontWeight.w300)),
            ),
            SizedBox(height: 10),
            Text(
              'Merk kendaraan',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Inter",
              ),
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Masukkan merk kendaraan bermotor',
                  hintStyle: TextStyle(
                      fontFamily: "Inter", fontWeight: FontWeight.w300)),
            ),
            SizedBox(height: 10),
            Text(
              'Total harga',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: '16.000',
                  hintStyle: TextStyle(
                      fontFamily: "Inter", fontWeight: FontWeight.w300)),
            ),
            SizedBox(height: 16),
            Center(
              child: SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                  child: Text(
                    "TAMBAH",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    ]));
  }
}
