import 'package:flutter/material.dart';

import 'package:oct_27/views/category_screen.dart';
import 'package:oct_27/views/favorite.dart';
import 'package:oct_27/widgets/myDrawer.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _currentIndex = 0;

  selectedIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Map<String, dynamic>> screens = [
    {
      'page': CategoryScreen(),
      'title': 'Category',
    },
    {
      'page': FavoriteScreen(),
      'title': 'Favorite',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screens[_currentIndex]['title']),
      ),
      drawer: MyDrawer(),
      body: screens[_currentIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: selectedIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          navBarItem(Icon(Icons.category), 'Category', Colors.purple),
          navBarItem(Icon(Icons.favorite), 'Category', Colors.pink),
        ],
      ),
    );
  }

  navBarItem(Icon icon, String label, Color color) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
      backgroundColor: color,
    );
  }
}
