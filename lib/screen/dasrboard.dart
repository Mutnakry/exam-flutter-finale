import 'package:assingment/app_color.dart';
import 'package:flutter/material.dart';

class Dasrboard extends StatefulWidget {
  const Dasrboard({Key? key}) : super(key: key);

  @override
  State<Dasrboard> createState() => _DasrboardState();
}

class _DasrboardState extends State<Dasrboard> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white500,
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            child:Icon(Icons.shopping_cart_outlined,
              size: 28,),
          ),
        ],
      ),
      drawer: const Drawer() ,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            Container(
              height: 220,
              decoration: BoxDecoration(
                color: AppColor.white500,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
                )
              ),
            ),
            ListView(
              children: <Widget>[
                // Search bar and cart icon
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, size: 28, color: AppColor.gray500),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: AppColor.white500),
                            ),
                            hintText: "Search",
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Action to perform when the button is pressed
                        print('Button pressed!');
                      },
                      child: Icon(Icons.filter_alt_outlined,size: 38,color: AppColor.gray500,),
                    )
                  ],
                ),
                Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0), // Set the radius as per your need
                    child: Container(
                      padding: EdgeInsets.all(0),
                      child: Image.asset(
                        'assets/images/bener.jpg',
                        fit: BoxFit.cover, // Ensures the image fits within the container
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10), // Adds a margin of 10 pixels on all sides
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top categories",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.message, size: 40, color: Colors.teal),
                              SizedBox(height: 10.0),
                              Text('Contacts', style: TextStyle(fontSize: 16.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.message, size: 40, color: Colors.teal),
                              SizedBox(height: 10.0),
                              Text('Contacts', style: TextStyle(fontSize: 16.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.message, size: 40, color: Colors.teal),
                              SizedBox(height: 10.0),
                              Text('Contacts', style: TextStyle(fontSize: 16.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.message, size: 40, color: Colors.teal),
                              SizedBox(height: 10.0),
                              Text('Contacts', style: TextStyle(fontSize: 16.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.message, size: 40, color: Colors.teal),
                              SizedBox(height: 10.0),
                              Text('Contacts', style: TextStyle(fontSize: 16.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.message, size: 40, color: Colors.teal),
                              SizedBox(height: 10.0),
                              Text('Contacts', style: TextStyle(fontSize: 16.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.message, size: 40, color: Colors.teal),
                              SizedBox(height: 10.0),
                              Text('Contacts', style: TextStyle(fontSize: 16.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.message, size: 40, color: Colors.teal),
                              SizedBox(height: 10.0),
                              Text('Contacts', style: TextStyle(fontSize: 16.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10), // Adds a margin of 10 pixels on all sides
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New Arrivals",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),

    );
  }
}
