
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
    SalomonBottomBarItem(icon: const Icon(Icons.home),
        title: const Text("Home"),
        selectedColor: Colors.black),
    SalomonBottomBarItem(icon: const Icon(Icons.favorite),
        title: const Text("Favorite"),
        selectedColor: Colors.black),
    SalomonBottomBarItem(icon: const Icon(Icons.shopping_bag_outlined),
        title: const Text("Shopping"),
        selectedColor: Colors.black),
    SalomonBottomBarItem(icon: const Icon(Icons.person),
        title: const Text("Profile"),
        selectedColor: Colors.black)
  ];

  final _screen = [
    Center(child: const HomeScreen()),
    Center(child: const Cart()),
    Center(child: Text('Shopping', style: TextStyle(fontSize: 30),),),
    Center(child: Text('Setting', style: TextStyle(fontSize: 30),),)

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        items: _items, currentIndex: _currentIndex, onTap: (index) =>
          setState(() {
            _currentIndex = index;
          }),),
    );
  }
}