import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:sample/models/category.dart';
import 'package:sample/models/meals.dart';

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
  // List<dynamic> _categories = [];
  List<Category> _categoryObjects = [];
  final List<Meal> _meals = [];

  @override
  void initState() {
    super.initState();
    _fetchCategories();
  }

  void didchangeDependencies() {
    super.didChangeDependencies();
    print(_categoryObjects);
  }

  void didupdateWidget(covariant HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print(_categoryObjects);
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
        // _categories = data['categories'] ?? [];
        _categoryObjects = CategoryList.fromJson(data).categories;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }
  //https://www.themealdb.com/api/json/v1/1/filter.php?c=Beef
  // _fetchCategoriesItems(String category)

  _fetchCategoriesItems(String category) async {
    try {
      final url = Uri.parse('https://www.themealdb.com/api/json/v1/1/filter.php?c=$category');
      final res = await http.get(url);
      if (res.statusCode != 200) {
        return;
      }
      final data = jsonDecode(res.body);

      setState(() {
        _meals.clear();
        _meals.addAll(MealsResponse.fromJson(data).meals);
      });
      print(_meals);
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    print(_categoryObjects);
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Seaachbar(),
          SizedBox(height: 20),
          Text('Categories', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    for (var category in _categoryObjects) ...[
                      ElevatedButton(
                        onPressed: () {
                          // Add your button logic here
                          _fetchCategoriesItems(category.strCategory);
                        },
                        child: Text(category.strCategory),
                      ),
                      SizedBox(width: 8),
                    ], // Add spacing between buttons
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 400,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (var meal in _meals) ...[
                    InkWell(
                      onTap: () {
                        // Handle card tap if needed

                        Navigator.push(context, MaterialPageRoute(builder: (context) => RecipePage(id: meal.idMeal)));
                      },
                      child: Card(
                        child: Column(
                          children: [
                            if (meal.strMealThumb != null)
                              Image.network(height: 50, meal.strMealThumb!)
                            else
                              SizedBox.shrink(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(meal.strMeal, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
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

class Seaachbar extends StatelessWidget {
  const Seaachbar({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return TextField(
      controller: controller,
      decoration: InputDecoration(hintText: 'search...', prefixIcon: Icon(Icons.search), border: OutlineInputBorder()),
    );
  }
}

class RecipePage extends StatefulWidget {
  final String id;
  const RecipePage({super.key, required this.id});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initstate");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  void activate() {
    // TODO: implement activate
    super.activate();
    print("activate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  final bool _isLoading = true;
  @override
  Widget build(BuildContext context) {
    print(widget.id);
    return Scaffold(appBar: AppBar(title: Text('Recipe Page')), body: Center(child: 
    
    _isLoading ? CircularProgressIndicator() :
    
    Text('Recipe Details Here')));
  }
}

// a?b:c
