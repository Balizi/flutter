import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:simplone/model/brief.dart';
import 'package:simplone/pages/brief_details.dart';
import 'package:http/http.dart' as http;

class BriefList extends StatefulWidget {
  const BriefList({super.key});
  @override
  State<BriefList> createState() => _BriefList();
}

class _BriefList extends State<BriefList> {
  getBrief() async {
    String url = "http://localhost:3000/briefs";
    var res = await http.get(Uri.parse(url));
    var jsonResponse = json.decode(res.body);
    // print(jsonResponse[0]['title']);
    return jsonResponse;
  }

  Future<List<Brief>> getRequest() async {
    String url = "http://localhost:3000/briefs";
    final response = await http.get(Uri.parse(url));
    var responseData = json.decode(response.body);
    List<Brief> briefs = [];
    for (var singleBrief in responseData) {
      Brief brief = Brief(
        title: singleBrief['title'],
        description: singleBrief['description'],
        imageUrl: singleBrief['picture'],
        year: singleBrief['year'],
        name:singleBrief['name'],
        modalites:singleBrief['modalites']
      );
      briefs.add(brief);
    }
    return briefs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView.builder(itemCount: briefList.length,itemBuilder: (context, index){
      //   Brief brief = briefList[index];
      //   // var respon = getBrief();
      //   return Card(
      //     child: ListTile(
      //       title: Text(brief.title),
      //       subtitle: Text(brief.year.toString()),
      //       leading: Image.asset(brief.imageUrl),
      //       trailing: Icon(Icons.arrow_forward_rounded),
      //       onTap: (){
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => BriefDetails(brief)));
      //       },
      //     ),
      //   );
      // }),
      body: Container(
        padding: EdgeInsets.all(16),
        child: FutureBuilder(
          future: getRequest(),
          builder: (BuildContext ctx, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (ctx, index) => Card(
                    child: ListTile(
                  title: Text(snapshot.data[index].name),
                  subtitle: Text(snapshot.data[index].year.toString()),
                  leading: Image.asset(snapshot.data[index].imageUrl),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute( builder: (context) => BriefDetails(snapshot.data[index])));
                  },
                )),
              );
            }
          },
        ),
      ),
    );
  }
}
