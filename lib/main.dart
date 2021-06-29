import 'package:assingment11/ui/pages/favoritePage.dart';
import 'package:assingment11/ui/pages/productPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Products'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Favorite',
            )
          ]),
        ),
        body: TabBarView(
          children: [ProductPage(), FavoriteScreen()],
        ),
      ),
    );
  }
}
