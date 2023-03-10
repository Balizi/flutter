// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  // const Article({super.key});
  final String techImage;
  final String techName;
  final String techPrice;
  
  Article({
    required this.techImage,
    required this.techName,
    required this.techPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 20,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Tech image
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(techImage)),
                // child: Image.asset('assets/images/tech1.png')),

            //Tech text
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                  techName,
                  // "data",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "With Almonk Milk",
                  style: TextStyle(color: Colors.grey[700]),
                )
              ]),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                Text('\$'+techPrice,style: TextStyle(color: Colors.white),),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(6)),
                  child: Icon(Icons.add,color: Colors.white),
                  
                )
                
              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
