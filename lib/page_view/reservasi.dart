import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projectcarwash/page_view/startscreen.dart';
import 'package:projectcarwash/services/reservasi.dart';

class Reservasi extends StatefulWidget {
  Reservasi({super.key, required this.data});
  List data = [];

  @override
  State<Reservasi> createState() => _ReservasiState();
}

class _ReservasiState extends State<Reservasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.data.isEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "img/nodata.png",
                  width: 350,
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Data reservasi kosong',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            )
          : ListView(
              children: List.generate(
                widget.data.length,
                (index) {
                  var item = widget.data[index];

                  return Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          offset: Offset(0, 2),
                          color: Colors.grey.withOpacity(.25),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        _itemRow(title: 'Nama', value: item['costumer_name']),
                        SizedBox(height: 10),
                        _itemRow(
                            title: 'Plat Nomor', value: item['plate_number']),
                        SizedBox(height: 10),
                        _itemRow(title: 'Tipe Pencucian', value: item['name']),
                        SizedBox(height: 30),
                        _itemRow(
                          title: "Total harga",
                          value: item['total'],
                          isBold: true,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            item['is_valid'] == "true"
                                ? ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 110, 231, 116),
                                      shape: StadiumBorder(),
                                    ),
                                    onPressed: () async {
                                      var res = await ReservasiService.done(
                                          item['id']);
                                      if (!res) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "Gagal menyelesaikan reservasi")));
                                      }
                                    },
                                    label: Text("Selesaikan"),
                                    icon: Icon(
                                      Icons.library_add_check_rounded,
                                      color: Colors.white,
                                    ),
                                  )
                                : ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder()),
                                    onPressed: () async {
                                      var res = await ReservasiService.verif(
                                          item['id']);
                                      if (!res) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "Gagal verifikasi data!!!")));
                                      }
                                    },
                                    label: Text("Verifikasi"),
                                    icon: Icon(
                                      Icons.check_circle,
                                      color: Colors.white,
                                    ),
                                  ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
    );
  }

  Row _itemRow({required title, required value, isBold = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          child: Text(
            title,
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 18,
              fontWeight: isBold ? FontWeight.w800 : FontWeight.normal,
            ),
          ),
        ),
        Text(':'),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 18,
              fontWeight: isBold ? FontWeight.w800 : FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
