import 'package:flutter/material.dart';
import 'package:horizon_project/add.dart';
import 'package:horizon_project/home.dart';
import 'package:horizon_project/profile.dart';
import 'package:horizon_project/search.dart';

class BottomNavigationWidget extends StatefulWidget {
  final int selectedItem;
  final ValueChanged<int> onTap;

  BottomNavigationWidget(
      {required this.selectedItem, required this.onTap, Key? key})
      : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(), // Placeholder for the middle button
    add(),
    Profilescreen(),
  ];

  void _onItemTapped(int index) {
    if (widget.selectedItem == index)
      return; // Prevent navigating to the same screen

    widget.onTap(index);

    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Search()),
      ).then((_) {
        // Reset the selected index after returning from the AddBook screen
        widget.onTap(0);
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => _widgetOptions[index]),
      ).then((_) {
        widget.onTap(0);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: widget.selectedItem,
        selectedItemColor: Color(0xFF0077B5),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: BottomNavigationWidget(
            selectedItem: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
