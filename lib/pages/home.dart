import 'package:flutter/material.dart';
import 'package:simplone/pages/brief_list.dart';
import 'package:simplone/pages/briefs.dart';
import 'package:simplone/pages/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int index = 0;
  final pages = [
    Center(child: BriefList()),
    Center(child: Briefs()),
    Center(child: Text('Page 3',style: TextStyle(fontSize: 37))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 250, 102, 91),
        leading: Icon(Icons.menu),
        title: Text('Hello'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      body:pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(()=> this.index = index),
        height: 60,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Briefs',
          ),

          NavigationDestination(
            icon: Icon(Icons.search),
            selectedIcon: Icon(Icons.search),
            label: 'Search',
          ),

          NavigationDestination(
            icon: Icon(Icons.history_outlined),
            selectedIcon: Icon(Icons.history),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
