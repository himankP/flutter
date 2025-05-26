import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: MyHomePage()));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // List of screens to display based on the selected index
  final List<Widget> _screens = const [screen5(), screen6(), screen7(), screen8()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.commute), label: 'Commute'),
          NavigationDestination(selectedIcon: Icon(Icons.bookmark), icon: Icon(Icons.bookmark_border), label: 'Saved'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      body: _screens[_selectedIndex], // Display the selected screen
    );
  }
}

class screen5 extends StatelessWidget {
  const screen5({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("screen5"));
  }
}

class screen6 extends StatelessWidget {
  const screen6({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("screen6"));
  }
}

class screen7 extends StatelessWidget {
  const screen7({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("screen7"));
  }
}

class screen8 extends StatelessWidget {
  const screen8({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("screen8"));
  }
}
