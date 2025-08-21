import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [const HomePage(), const FavoritePage(), const ShoppingListPage(), const SettingPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Display the first screen by default
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        selectedIndex: _selectedIndex, // Default selected index
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorites'),
          NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Shopping List'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void activate() {
    // TODO: implement activate
    super.activate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Page.'));
  }
}

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Favorite Page'));
  }
}

class ShoppingListPage extends StatelessWidget {
  const ShoppingListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Shopping List Page'));
  }
}

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Setting Page'));
  }
}
