import 'package:flutter/material.dart';
import 'package:simplone/model/brief.dart';


class BriefDetails extends StatelessWidget {
  final Brief brief;
  

  const BriefDetails(this.brief);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 250, 102, 91),
        leading: IconButton( icon : Icon(Icons.arrow_back_rounded), onPressed: (){Navigator.pushNamed(context, "/home");} ),
        title: Text('YouCode Safi 2022 Brendan Eich'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(brief.imageUrl),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  brief.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Contexte du projet : "+brief.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              SizedBox(
                        height: 35,
                      ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Modalités pédagogiques : "+brief.modalites,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}