import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

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
  bool _isLoading = true;
  List<dynamic> _categories = [];

  @override
  void initState() {
    super.initState();
    _fetchCategories();
  }

  Future<void> _fetchCategories() async {
    setState(() {
      _isLoading = true;
    });
    try {
      final url = Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php');
      final res = await http.get(url);
      if (res.statusCode != 200) {
        setState(() {
          _isLoading = false;
        });
        return;
      }
      final data = jsonDecode(res.body);
      setState(() {
        _categories = data['categories'] ?? [];
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_categories.isEmpty) {
      return const Center(child: Text('No categories found.'));
    }
    return ListView.builder(
      itemCount: _categories.length,
      itemBuilder: (context, index) {
        final category = _categories[index];
        return ListTile(
          title: Text(category['strCategory'] ?? 'Unknown'),
          subtitle: Text(category['strCategoryDescription'] ?? ''),
        );
      },
    );
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
