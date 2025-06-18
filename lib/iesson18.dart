import 'package:flutter/material.dart';
import 'package:sample/lesson8.dart';

void main(List<String> args) {
  print(("hello"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'futter demo', theme: ThemeData(), home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screen = [const screen1(), const Screen2(), const screen3()];
  int screenIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screen[screenIndex]),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        selectedIndex: screenIndex,
        onDestinationSelected: (int index) {
          setState(() {
            screenIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class screen1 extends StatelessWidget {
  const screen1({super.key});
  @override
  Widget build(BuildContext context) {
    List item = [Mycard(), Mycard(), Mycard(), Mycard(), Mycard(), Mycard()];
    // return ListView(
    //   scrollDirection: Axis.horizontal,
    //   children: const [Mycard(), Mycard(), Mycard(), Mycard(), Mycard(), Mycard()],
    // );
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Mycard();
      },
      itemCount: item.length,
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    List<Mycard> items = [Mycard(), Mycard(), Mycard(), Mycard(), Mycard(), Mycard()];
    // return GridView.count(crossAxisCount: 2, children: [Mycard(), Mycard(), Mycard(), Mycard()]);
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Center(child: (items[index]));
      },
    );
  }
}

class screen3 extends StatelessWidget {
  const screen3({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => {print("click on card")},
            child: ListTile(
              leading: CircleAvatar(radius: 30, backgroundImage: AssetImage('images/image1.jpg')),
              title: Text("title goes here"),
              subtitle: Text("sconday txet"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          GestureDetector(
            onTap: () => {print("click on card")},

            child: Image.asset("images/image1.jpg", width: 300, height: 300),
          ),
          GestureDetector(
            onTap: () => {print("click on card")},
            child: Container(color: Colors.amber, padding: EdgeInsets.all(16), child: Text('Click me')),
          ),

          InkWell(
            onTap: () => {print("click on card")},
            child: ListTile(
              leading: CircleAvatar(radius: 30, backgroundImage: AssetImage('images/image1.jpg')),
              title: Text("title goes here"),
              subtitle: Text("sconday txet"),
              trailing: Icon(Icons.more_vert),
            ),
          ),

          InkWell(
            onTap: () => {print("click on card")},
            child: Image.asset("images/image1.jpg", width: 300, height: 300),
          ),

          InkWell(
            onTap: () => {print("click on card")},
            child: Container(color: Colors.amber, padding: EdgeInsets.all(16), child: Text('Click me')),
          ),
        ],
      ),
    );
  }
}

class screen4 extends StatelessWidget {
  const screen4({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(("screen4"));
  }
}

class screen5 extends StatelessWidget {
  const screen5({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(("screen5"));
  }
}

class screen6 extends StatelessWidget {
  const screen6({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(("screen6"));
  }
}

class Mycard extends StatelessWidget {
  const Mycard({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(radius: 30, backgroundImage: AssetImage('images/image1.jpg')),
                    SizedBox(width: 20),

                    Column(children: [Text("title goes here"), Text("sconday txet")]),
                  ],
                ),
                SizedBox(height: 20),

                Hero(tag: 'image1', child: Image.asset("images/image1.jpg", width: 300)),
                SizedBox(height: 20),

                Text("geryhound divisively hello coldly wonderfull marginally far upon excluding"),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        TextButton(onPressed: () {}, child: Text("action1")),
                        TextButton(onPressed: () {}, child: Text("action2")),
                      ],
                    ),
                    SizedBox(width: 10),
                    Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_rounded)),
                        SizedBox(width: 10),
                        IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
