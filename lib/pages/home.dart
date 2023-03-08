import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int index = 0;
  final pages = [
    Center(child: Text('Page 1',style: TextStyle(fontSize: 37))),
    Center(child: Text('Page 2',style: TextStyle(fontSize: 37))),
    Center(child: Text('Page 3',style: TextStyle(fontSize: 37))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(()=> this.index = index),
        height: 60,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),

          NavigationDestination(
            icon: Icon(Icons.category_outlined),
            selectedIcon: Icon(Icons.category),
            label: 'Category',
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
