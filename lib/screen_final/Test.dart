import 'package:flutter/material.dart';

class AppDashboard extends StatefulWidget {
  const AppDashboard({Key? key}) : super(key: key);

  @override
  State<AppDashboard> createState() => _AppDashboardState();
}

class _AppDashboardState extends State<AppDashboard> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Navbar
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined,size: 33),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_border,size: 33,),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.card_travel_outlined,size: 33),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline,size: 33),
            label: '',
          ),

        ],
      ),
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
      body: ListView(
        children:<Widget> [

        ],
      ),
    );
  }

  // Helper function to build category item
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
