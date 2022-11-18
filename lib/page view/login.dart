import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff8d8ffd),
        body: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Image.asset(
                "img/logo.png",
                width: 300,
                // height: 200,
              ),
            ),
            Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 39,
                fontFamily: "Inter",
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(20)),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Inter",
                      ),
                    ),
                    SizedBox(height: 2),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Masukkan e-mail',
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Password'),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Masukkkan Password",
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
