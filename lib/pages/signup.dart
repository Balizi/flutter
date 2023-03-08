import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(fontSize: 35, fontFamily: "myfont"),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SvgPicture.asset(
                    "assets/icons/signup.svg",
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
                    onPressed: () {Navigator.pushNamed(context, "/");},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                          // ignore: prefer_const_constructors
                          EdgeInsets.symmetric(horizontal: 100, vertical: 15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an accout? "),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: const Text(
                            " Log in",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  SizedBox(
                    width: 299,
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 0.6,
                          color: Colors.purple[900],
                        )),
                        Text("OR", style: TextStyle(color: Colors.purple[900])),
                        Expanded(
                            child: Divider(
                          thickness: 0.6,
                          color: Colors.purple[900],
                        )),
                      ],
                    )
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 44),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple, width: 1)),
                          child: SvgPicture.asset(
                            "assets/icons/facebook.svg",
                            color: Colors.purple[700],
                            height: 21,
                          ),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple, width: 1)),
                          child: SvgPicture.asset(
                            "assets/icons/google-plus.svg",
                            color: Colors.purple[700],
                            height: 21,
                          ),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple, width: 1)),
                          child: SvgPicture.asset(
                            "assets/icons/twitter.svg",
                            color: Colors.purple[700],
                            height: 21,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                right: 0,
                child: Image.asset("assets/images/main_top.png", width: 111)),
            Positioned(
                bottom: 0,
                right: 0,
                child:
                    Image.asset("assets/images/login_bottom.png", width: 111))
          ],
        ),
      )))),
    );
  }
}
