import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        bottomNavigationBar: _DemoBottomAppBar(
          fabLocation: FloatingActionButtonLocation.startDocked,
          shape: const CircularNotchedRectangle(),
        ),
        appBar: AppBar(title: const Text('Bottom App Bar Demo')),
        body: screen4(),
      ),
    ),
  );
}

class screen4 extends StatelessWidget {
  const screen4({super.key});
  @override
  Widget build(BuildContext context) {
    return Text("screen4");
  }
}

class _DemoBottomAppBar extends StatelessWidget {
  const _DemoBottomAppBar({
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;

  static final List<FloatingActionButtonLocation> centerLocations = <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // shape: shape,
      color: Colors.blue,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            IconButton(tooltip: 'Open navigation menu', icon: const Icon(Icons.menu), onPressed: () {}),
            if (centerLocations.contains(fabLocation)) const Spacer(),
            IconButton(tooltip: 'Search', icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(tooltip: 'Favorite', icon: const Icon(Icons.favorite), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
