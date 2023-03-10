// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simplone/utils/langname.dart';

class Briefs extends StatefulWidget {
  // const Briefs({Key? key}) : super(key: key);

  const Briefs({super.key});

  @override
  State<Briefs> createState() => _Briefs();
}

class _Briefs extends State<Briefs> {
  //list of lang name
  final List langName = [
    ['Full Stacck', true],
    ['Java', false],
    ['Jee', false],
    ['Spring Boot', false],
    ['Angular', false],
  ];

  // user clicked on langName
  void langNameSelected(int index) {
    setState(() {
      for (int i = 0; i < langName.length; i++) {
        langName[i][1] = false;
      }
      langName[index][1] = true;
      print(langName[index][0]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
          body: Column(
            children: [
              //Find the best coffee for you
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Find the best coffee for you",
                  style: GoogleFonts.bebasNeue(fontSize: 60),
                ),
              ),
              SizedBox(height: 25),
              //Search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Find your coofee',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                  ),
                ),
              ),

              SizedBox(height: 25),

              //horizontal listview of tech
              Container(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: langName.length,
                      itemBuilder: (context, index) {
                        return LangName(
                            techName: langName[index][0],
                            isSelected: langName[index][1],
                            onTap: () {
                              langNameSelected(index);
                            });
                      })),

              //horizontal listview of coffee tiles
              Expanded(
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                // Article(techImage: 'assets/images/tech1.png',techName: 'Hello',techPrice: '40'),
                // Article(techImage:'assets/images/tech1.png',techName:'Hello',techPrice:'40'),
                // Article(techImage:'assets/images/tech1.png',techName:'Hello',techPrice:'40'),
                // Article(techImage:'assets/images/tech1.png',techName:'Hello',techPrice:'40'),
              ])),
              // Brief(),
            ],
            
          ),
    ));
  }
}
