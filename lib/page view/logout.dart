import 'package:flutter/material.dart';
import 'package:projectcarwash/page%20view/login.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Logout"),
      content: Text("Apakah anda yakin ingin logout?"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Text("IYA")),
        TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: Text("Tidak")),
      ],
    );
  }
}
