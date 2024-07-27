import 'package:flutter/material.dart';
import 'package:uts_ui_search_page_ig/pages/search_page.dart';
import 'package:uts_ui_search_page_ig/utils/colors.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 1;
  void _navigateBottomNavbar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _children = [
    const Center(child: Text("HOME"),),
    const SearchPage(),
    const Center(child: Text("NEW POST"),),
    const Center(child: Text("FAVORITES"),),
    const Center(child: Text("ACCOUNT"),),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _navigateBottomNavbar,
        iconSize: 30,
        selectedItemColor: mobileSearchColor,
        selectedLabelStyle: const TextStyle(fontSize: 0),
        unselectedLabelStyle: const TextStyle(fontSize: 0),
        currentIndex: _selectedindex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Symbols.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.search),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.add_box),
            label: "new post",
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.favorite),
            label: "favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.person),
            label: "account",
          ),
        ]
      ),
    );
  }
}