import 'package:flutter/material.dart';
import 'package:projectcarwash/page%20view/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailCon = TextEditingController();
  TextEditingController passwordCon = TextEditingController();
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

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
            SizedBox(height: 30),
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
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 8,
                          offset: Offset(0, 4),
                          color: Colors.black.withOpacity(.25))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(20)),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Inter",
                      ),
                    ),
                    SizedBox(height: 2),
                    TextField(
                      controller: emailCon,
                      decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.mail_outline_rounded, size: 24),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Masukkan e-mail',
                          hintStyle: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w300)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Password',
                      style: TextStyle(fontFamily: "Inter", fontSize: 20),
                    ),
                    SizedBox(height: 2),
                    TextField(
                      controller: passwordCon,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: !_obscured,
                      focusNode: textFieldFocusNode,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_rounded, size: 24),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                            child: GestureDetector(
                              onTap: _toggleObscured,
                              child: Icon(
                                _obscured
                                    ? Icons.visibility_rounded
                                    : Icons.visibility_off_rounded,
                                size: 24,
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "Masukkkan Password",
                          hintStyle: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w300,
                          )),
                    ),
                    SizedBox(height: 50),
                    Center(
                      child: SizedBox(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(shape: StadiumBorder()),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                        ),
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
