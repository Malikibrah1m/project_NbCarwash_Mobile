import 'package:flutter/material.dart';
import 'package:projectcarwash/page_view/startscreen.dart';

class Reservasi extends StatefulWidget {
  const Reservasi({super.key});

  @override
  State<Reservasi> createState() => _ReservasiState();
}

class _ReservasiState extends State<Reservasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
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
              Text(
                "Nama orang yang baru reservasi",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Plat nomor",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Tipe pencucian",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Total harga",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontFamily: "Inter",
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
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

        // untuk bagian yang kosong atau box data tidak tersedia ini, adalah defaultnya. Apabila belum ada yang melakukan booking, tampilan yang muncul pertama kali adalah ini
        // Tampilan ini, juga digunakan apabila ada data yang sudah terverifikasi. intinya ini merupakan tampilan default / tampilan awal
        SizedBox(height: 5),
        Container(
            padding: EdgeInsets.all(100),
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 8,
                      offset: Offset(0, 2),
                      color: Colors.grey.withOpacity(.25))
                ]),
            child: Center(
              child: Text("Data tidak tersedia"),
            )),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
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
              Text(
                "Nama orang yang baru reservasi",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Plat nomor",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Tipe pencucian",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Total harga",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontFamily: "Inter",
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
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
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
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
              Text(
                "Nama orang yang baru reservasi",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Plat nomor",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Tipe pencucian",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Total harga",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontFamily: "Inter",
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
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
        )
      ],
    ));
  }
}
