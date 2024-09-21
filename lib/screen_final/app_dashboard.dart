
import 'package:assingment/componemt/login.dart';
import 'package:assingment/screen_final/cart.dart';
import 'package:assingment/screen_final/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class AppDashboard extends StatefulWidget {
  const AppDashboard({super.key});

  @override
  State<AppDashboard> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<AppDashboard> {
  int _currentIndex = 0;

  final _items = [
    SalomonBottomBarItem(icon: const Icon(Icons.home), title: const Text("Home"),selectedColor: Colors.black),
    SalomonBottomBarItem(icon: const Icon(Icons.favorite), title: const Text("Favorite"),selectedColor: Colors.black),
    SalomonBottomBarItem(icon: const Icon(Icons.shopping_bag_outlined), title: const Text("Shopping"),selectedColor: Colors.black),
    SalomonBottomBarItem(icon: const Icon(Icons.person), title: const Text("Profile"),selectedColor: Colors.black)
  ];

  final _screen = [
    Center(child: const HomeScreen() ),
    Center(child: const Cart() ),
    Center(child: Text('Shopping', style: TextStyle(fontSize: 30),),),
    Center(child: Text('Setting', style: TextStyle(fontSize: 30),),)

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            child: const Icon(
              Icons.search,
              size: 28,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Container(
            height: 60, // Set your desired height
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildCategoryItem("New Arrival"),
                _buildCategoryItem("Trending"),
                _buildCategoryItem("Brand"),
                _buildCategoryItem("T-Shirts"),
                _buildCategoryItem("Products"),
                _buildCategoryItem("Items"),
              ],
            ),
          ),
        ),
      ),
      drawer: const Drawer(),
      body: _screen[_currentIndex],
      bottomNavigationBar:  SalomonBottomBar(items:_items,currentIndex: _currentIndex,onTap: (index) => setState(() {
        _currentIndex = index;
      }),),
    );

  }
  Padding _buildCategoryItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10), // Space between image and text
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}