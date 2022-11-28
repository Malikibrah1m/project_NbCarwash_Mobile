import 'package:flutter/material.dart';
import 'package:projectcarwash/page%20view/login.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: EdgeInsets.only(top: 10, bottom: 30),
      title: Text("Logout"),
      content: Text("Apakah anda yakin ingin logout?"),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text("IYA")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: Text("TIDAK"))
          ],
        ),

        // TextButton(
        //     onPressed: () {
        //       Navigator.pushReplacement(
        //           context, MaterialPageRoute(builder: (context) => Login()));
        //     },
        //     child: Text("IYA")),
        // TextButton(
        //     onPressed: () => Navigator.pop(context, 'Cancel'),
        //     child: Text("Tidak")),
      ],
    );
  }
}
