import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simplone/pages/home.dart';

class Login extends StatefulWidget{

  const Login({super.key});
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isLoading = false;
  signIn(String email,String password) async{
    String url = "http://localhost:3000/users";
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map body = {"email" : email, "password" : password};
    var jsonResponse;
    var res = await http.post(Uri.parse(url), body: body);
    if(res.statusCode == 200){
      jsonResponse = json.decode(res.body);
      print("Response status: ${res.statusCode}");
      print("Response status: ${res.body}");
      if(jsonResponse != null){
        setState(() {
          isLoading = true;
        });

        sharedPreferences.setString("token", jsonResponse["token"]);

        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => Home()),
          (Route<dynamic> route) => false);

      }
    }else{
      setState(() {
        isLoading = false;
      });
      print("Response status: ${res.body}");
    }
  }

  logIn(String email,String password) async{
    String urlGet = "http://localhost:3000/users?email="+email+"&password="+password;
    String seconde = "http://localhost:3000/users?email="+email+"&password="+password;
    SharedPreferences sharedPreferences1 = await SharedPreferences.getInstance();
    var req = await http.get(Uri.parse(seconde));
    print("dkhlt");
    if(req.statusCode == 200 && !(json.decode(req.body).isEmpty)){
    print("hhhh");
      setState(() {
        isLoading = true;
      });
      Navigator.pushNamed(context, "/home");
    }
    else{ return;}
  }

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
                          controller: _emailController,
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
                          controller: _passwordController,
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
                        // onPressed: () {Navigator.pushNamed(context, "/home");},
                        onPressed: (){
                          if( _emailController.text.isEmpty || _passwordController.text.isEmpty){
                            return;
                          }
                          // setState(() {
                          //   isLoading = true;
                          // });
                          // print("email");
                          // print(_emailController.text);
                          // print("password");
                          // print(_passwordController.text);
                          // signIn(_emailController.text,_passwordController.text);
                          logIn(_emailController.text,_passwordController.text);
                          // Navigator.pushNamed(context, "/home");
                        },
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
