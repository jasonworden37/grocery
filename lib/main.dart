import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Helper',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Grocery Helper'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: 'Friends',
              icon: Icon(Icons.groups_sharp)
          ),
          BottomNavigationBarItem(
              label: 'List',
              icon: Icon(Icons.list)
          ),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person)
          ),
        ],
      ),
    );
  }
}
