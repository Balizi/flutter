import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SafeArea(
              child: Scaffold(
                  body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.amber[100],
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                        height: 35,
                      ),
                      Text(
                        "Log in",
                        style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      SvgPicture.asset(
                        "assets/icons/login.svg",
                        width: 288,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.purple[800],
                              ),
                              hintText: "Your Email :",
                              border: InputBorder.none),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 23,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              suffix: Icon(
                                Icons.visibility,
                                color: Colors.purple[900],
                              ),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.purple[800],
                                size: 19,
                              ),
                              hintText: "Password :",
                              border: InputBorder.none),
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      ElevatedButton(
                        onPressed: () {Navigator.pushNamed(context, "/home");},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                              // ignore: prefer_const_constructors
                              EdgeInsets.symmetric(
                                  horizontal: 106, vertical: 15)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: const Text(
                          "login",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an accout? "),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/signup");
                              },
                              child: const Text(
                                " Sign up",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                        ],
                      )
                    
                ],
              ),
            ),
            Positioned(
                right: 0,
                child: Image.asset("assets/images/main_top.png", width: 111)),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset("assets/images/login_bottom.png", width: 111))
          ],
        ),
      )))),
    );
  }
}
