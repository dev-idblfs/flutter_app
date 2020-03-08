import 'package:flutter/material.dart';
import 'package:flutter_app/screens/courses/coursList.dart';
import 'package:flutter_app/screens/downloads/downloads.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:flutter_app/screens/profile/userHome.dart';

class MainBox extends StatefulWidget {
  @override
  _MainBoxState createState() => _MainBoxState();
}

class _MainBoxState extends State<MainBox> {
  // Default placeholder text
  Widget _selectedWidget = home();
  int _selectedIndex = 0;

  void _updateText() {
    setState(() {});
  }

  void _onItemTap(int index) {
    setState(() {
      switch (index) {
        case 0:
          _selectedIndex = index;
          _selectedWidget = home();
          break;
        case 1:
          _selectedIndex = index;
          _selectedWidget = courseList();
          break;
        case 2:
          _selectedIndex = index;
          _selectedWidget = downloads();
          break;
        case 3:
          _selectedIndex = index;
          _selectedWidget = home();
          break;
        case 4:
          _selectedIndex = index;
          _selectedWidget = userHome();
          break;
        default:
          _selectedIndex = 0;
          _selectedWidget = home();
      }
    });
  }

  _updateView() {
    return _selectedWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IDBLFS module 1"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: _updateView(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_download),
            title: Text('School'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.import_contacts),
            title: Text('School'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}
