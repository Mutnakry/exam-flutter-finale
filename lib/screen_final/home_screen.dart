import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> cartItems = [
    {
      "name": "T-Green",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLB1Xmnyld7RNWSCnnJQrsHp3N4AydAsFdjw&s",
      "price": 20.00,
      "detail": "អាវបុរស៉",
      "quantity": 1
    },
    {
      "name": "Pro",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy7s3m2QbgNmGVmlzjYpTJ_LkHiKuDVjO-5C_n6T0Ow-_dWOobpv-5XBm0NyJcnFA9a14&usqp=CAU",
      "price": 5.00,
      "detail": "អាវសាច់ក្រណាត់",
      "quantity": 2
    },
    {
      "name": "Pro",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiMA_zPRN-P4esmwfPrtHariWX9n4QArbXLIJMK5R5sVIxytvHXIbJ_1W5IQQfW_icEyk&usqp=CAU",
      "price": 10.00,
      "detail": "sale",
      "quantity": 2
    },{
      "name": "Pro",
      "image": "https://contents.mediadecathlon.com/p1609859/k60949b527a9b662dd66080915b0a2526/prod.jpg?format=auto&quality=40&f=400x400",
      "price": 15.0,
      "detail": "អាវកីឡាក្រុម - Decathlon",
      "quantity": 2
    },

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
          bottom: const TabBar(
            tabs: [
              Tab(text: 'New Arrivals'), // First Tab
              Tab(text: 'Popular'),
              Tab(text: 'Product'), // Second Tab
            ],
          ),
        ),
        drawer: const Drawer(),
        body: TabBarView(
          children: [
            // New Arrivals tab with GridView
            GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.7, // Adjust aspect ratio as needed
              ),
              itemCount: cartItems.length, // Use cartItems length
              itemBuilder: (context, index) {
                final item = cartItems[index]; // Get the cart item

                return Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      // Product image
                      Container(
                        padding: const EdgeInsets.all(0),
                        child: SizedBox(
                          height: 170, // Set the height of the image
                          child: Image.network(
                            item['image'],
                            fit: BoxFit.cover, // Ensures the image fits within the container
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              item['name'], // Display product name
                              style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),
                              textAlign: TextAlign.start, // Align text to start
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              item['detail'], // Display product detail
                              style: const TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start, // Align text to start
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${item['price'].toString()}', // Convert price to string
                              style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                            ),
                            const Icon(Icons.favorite_border, size: 24),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            // Popular tab content
            const Center(
              child: Text('Popular Products Coming Soon'),
            ),
            const Center(
              child: Text('Product Details Coming Soon'),
            ),
          ],
        ),
      ),
    );
  }
}
