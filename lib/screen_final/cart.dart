import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _MyCartState();
}

class _MyCartState extends State<Cart> {
  // Sample list of cart items (in a real app, this would come from a provider or database)
  final List<Map<String, dynamic>> cartItems = [
    {
      "name": "Product 1",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy7s3m2QbgNmGVmlzjYpTJ_LkHiKuDVjO-5C_n6T0Ow-_dWOobpv-5XBm0NyJcnFA9a14&usqp=CAU",
      "price": 20.0,
      "color": 'red',
      "quantity": 1
    },
    {
      "name": "Product 2",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy7s3m2QbgNmGVmlzjYpTJ_LkHiKuDVjO-5C_n6T0Ow-_dWOobpv-5XBm0NyJcnFA9a14&usqp=CAU",
      "price": 15.0,
      "color": 'red',
      "quantity": 2
    },
  ];

  // Function to calculate the total price
  double getTotalPrice() {
    return cartItems.fold(0, (sum, item) => sum + (item['price'] * item['quantity']));
  }

  // Function to remove an item from the cart
  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.arrow_back_ios, size: 18),
            SizedBox(width: 100),
            Text(
              "Your Cart",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Displaying cart items
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Row(
                    children: [
                      Image.network(
                        item["image"],
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  item["name"],
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$${item["price"]}", // Fixed price display
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Size: ${item['quantity']}', // Clearer label
                                ),
                                Text(
                                  'Color: ${item['color']}', // Clearer label
                                ),

                                IconButton(
                                  icon: Icon(Icons.plus_one_rounded, color: Colors.red),
                                  onPressed: () {}, // Remove item
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total: \$${getTotalPrice().toStringAsFixed(2)}', // Display total price
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
