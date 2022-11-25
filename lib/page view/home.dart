import 'package:flutter/material.dart';
import 'package:projectcarwash/page%20view/reservasi.dart' as reservasi;
import 'package:projectcarwash/page%20view/transaksi.dart' as transaksi;
import 'package:projectcarwash/page%20view/logout.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  void initState() {
    controller = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff8d8ffd),
      appBar: AppBar(
        leading: Image.asset("img/logo.png"),
        leadingWidth: 70.0,
        titleSpacing: 4,
        title: Text("NB-Carwash",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.logout_outlined, color: Colors.white),
            tooltip: "Logout",
            onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return Logout();
                }),
          ),
        ],
        bottom: TabBar(
          labelStyle: TextStyle(
              fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w500),
          controller: controller,
          tabs: [
            new Tab(text: "Reservasi"),
            Tab(
              text: "Transaksi",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          new reservasi.Reservasi(),
          new transaksi.Transaksi(),
        ],
      ),
    ));
  }
}
