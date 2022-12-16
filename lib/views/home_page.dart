import 'package:flutter/material.dart';

import 'home_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = const <Widget>[
    HomeList(),
    Text('Menu Page'),
    Text('Search Page'),
    Text('Account Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter BottomNavigationBar Example'),
          backgroundColor: Colors.grey),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ('Home'),
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: ('Menu'),
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ('Search'),
              backgroundColor: Color.fromARGB(255, 20, 95, 22),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: ('Account'),
              backgroundColor: Color.fromARGB(255, 241, 218, 17),
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
