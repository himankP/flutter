import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample/iesson18.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "fulter down", theme: ThemeData(), home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  final List<Widget> _screens = [screen1(), screen2()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        selectedIndex: index,
        onDestinationSelected: (int index) {
          setState(() {
            this.index = index;
          });
        },
      ),

      appBar: AppBar(title: Text('Home Screen')),
      body: _screens[index],
    );
  }
}

class screen1 extends StatelessWidget {
  const screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text("screen1"),
          subtitle: Text("This is screen 1"),
          leading: Hero(
            tag: 'image11',
            child: CircleAvatar(radius: 30, backgroundImage: AssetImage('images/image1.jpg')),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),

        ListTile(
          title: Text("screen1"),
          subtitle: Text("This is screen 1"),
          leading: Hero(
            tag: 'image10',
            child: CircleAvatar(radius: 30, backgroundImage: AssetImage('images/image1.jpg')),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("screen1"),
          subtitle: Text("This is screen 1"),
          leading: Hero(
            tag: 'image2',
            child: CircleAvatar(radius: 30, backgroundImage: AssetImage('images/image1.jpg')),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("screen1"),
          subtitle: Text("This is screen 1"),
          leading: Hero(
            tag: 'image3',
            child: CircleAvatar(radius: 30, backgroundImage: AssetImage('images/image1.jpg')),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("screen1"),
          subtitle: Text("This is screen 1"),
          leading: Hero(
            tag: 'image4',
            child: CircleAvatar(radius: 30, backgroundImage: AssetImage('images/image1.jpg')),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),

        ListTile(
          title: Text("screen1"),
          subtitle: Text("This is screen 1"),
          leading: Hero(
            tag: 'image5',
            child: CircleAvatar(radius: 30, backgroundImage: AssetImage('images/image1.jpg')),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("screen1"),
          subtitle: Text("This is screen 1"),
          leading: Hero(
            tag: 'image1',
            child: CircleAvatar(radius: 30, backgroundImage: AssetImage('images/image1.jpg')),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),

        TextButton(
          onPressed: () {
            // showModalBottomSheet(context: context, builder: (ctx) => SizedBox(height: 1000, child: Mycard()));
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Scaffold(body: Mycard())));
          },
          child: Text("click me"),
        ),

        TextButton(
          onPressed: () {
            showModalBottomSheet(context: context, builder: (ctx) => SizedBox(height: 1000, child: Mycard()));
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mycard()));
          },
          child: Text("click me"),
        ),
      ],
    );
  }
}

class screen2 extends StatelessWidget {
  const screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0, end: 1),
            duration: Duration(seconds: 2),
            builder: (context, value, child) {
              return Opacity(opacity: value, child: Transform.scale(scale: value, child: child));
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(child: Text('Animated Box', style: TextStyle(color: Colors.white))),
            ),
          ),
          SizedBox(height: 32),
          AnimatedContainer(
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            width: 150,
            height: 60,
            decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(20)),
            child: Center(child: Text('Animated Container', style: TextStyle(color: Colors.white))),
          ),
          SizedBox(height: 32),
          AnimatedDefaultTextStyle(
            duration: Duration(seconds: 2),
            style: TextStyle(fontSize: 28, color: Colors.green, fontWeight: FontWeight.bold),
            child: Text('Animated Text'),
          ),
        ],
      ),
    );
  }
}
