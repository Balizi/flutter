import 'package:flutter/material.dart';
import 'package:simplone/model/brief.dart';
import 'package:simplone/pages/brief_details.dart';

class BriefList extends StatelessWidget {
  const BriefList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: briefList.length,itemBuilder: (context, index){
        Brief brief = briefList[index];
        return Card(
          child: ListTile(
            title: Text(brief.title),
            subtitle: Text(brief.year.toString()),
            leading: Image.asset(brief.imageUrl),
            trailing: Icon(Icons.arrow_forward_rounded),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => BriefDetails(brief)));
            },
          ),
        );
      }),
    );
  }
}