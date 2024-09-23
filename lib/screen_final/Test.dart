import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)
                ),
              ),
            ),
            ListView(
              children: [
                GridView.count(
                  crossAxisCount:2,
                  shrinkWrap: true,
                  physics:const NeverScrollableScrollPhysics(),
                  children:<Widget> [
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                          width: MediaQuery.of(context).size.width / 2,
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 140,
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLB1Xmnyld7RNWSCnnJQrsHp3N4AydAsFdjw&s',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 4,),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('អាវ',style: TextStyle(color:Colors.purple,fontWeight: FontWeight.bold,fontSize: 16),), // Escaped dollar sign
                                  ],
                                ),
                              ),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('s shirts',style: TextStyle(color:Colors.black54,fontWeight: FontWeight.bold,fontSize: 24),), // Escaped dollar sign
                                  ],
                                ),
                              ),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('\$12',style: TextStyle(color:Colors.black54,fontWeight: FontWeight.bold,fontSize: 24),), // Escaped dollar sign
                                    Icon(Icons.favorite_border, size: 24),
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                          width: MediaQuery.of(context).size.width / 2,
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 140,
                                child: Image.network(
                                  'https://limhongfashion.com/image/cache/catalog/Product/SHIRT/ARROW%20/ARROW%20LH2860%20(56)-600x773.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 4,),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('view',style: TextStyle(color:Colors.purple,fontWeight: FontWeight.bold,fontSize: 16),), // Escaped dollar sign
                                  ],
                                ),
                              ),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Men is shirts',style: TextStyle(color:Colors.black54,fontWeight: FontWeight.bold,fontSize: 24),), // Escaped dollar sign
                                  ],
                                ),
                              ),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('\$15',style: TextStyle(color:Colors.black54,fontWeight: FontWeight.bold,fontSize: 24),), // Escaped dollar sign
                                    Icon(Icons.favorite_border, size: 24),
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                          width: MediaQuery.of(context).size.width / 2,
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 140,
                                child: Image.network(
                                  'https://idpoor.gov.kh/wp-content/uploads/2022/07/Screenshot-from-2022-07-14-16-57-17.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 4,),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('view',style: TextStyle(color:Colors.purple,fontWeight: FontWeight.bold,fontSize: 16),), // Escaped dollar sign
                                  ],
                                ),
                              ),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('names main',style: TextStyle(color:Colors.black54,fontWeight: FontWeight.bold,fontSize: 24),), // Escaped dollar sign
                                  ],
                                ),
                              ),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('\$25',style: TextStyle(color:Colors.black54,fontWeight: FontWeight.bold,fontSize: 24),), // Escaped dollar sign
                                    Icon(Icons.favorite_border, size: 24),
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                          width: MediaQuery.of(context).size.width / 2,
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 140,
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXixqXQu7AfjuVHTG0PosyKjY6-GtDlF2q6ecSWJ2ik5ZMcqgNJUwqzJjHgqIWu5mzfOI&usqp=CAU',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 4,),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('view',style: TextStyle(color:Colors.purple,fontWeight: FontWeight.bold,fontSize: 16),), // Escaped dollar sign
                                  ],
                                ),
                              ),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Bé Chin Shop',style: TextStyle(color:Colors.black54,fontWeight: FontWeight.bold,fontSize: 24),), // Escaped dollar sign
                                  ],
                                ),
                              ),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('\$20',style: TextStyle(color:Colors.black54,fontWeight: FontWeight.bold,fontSize: 24),), // Escaped dollar sign
                                    Icon(Icons.favorite_border, size: 24),
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                          width: MediaQuery.of(context).size.width / 2,
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 140,
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS7w6iFmJ4Ijer3yz9pNAHTwC57pQWclCXTnelIa15bVbQ6_nEbASWqg_KW52qXzJtmF8&usqp=CAU',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 4,),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('M',style: TextStyle(color:Colors.purple,fontWeight: FontWeight.bold,fontSize: 16),), // Escaped dollar sign
                                  ],
                                ),
                              ),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('SM Printing ',style: TextStyle(color:Colors.black54,fontWeight: FontWeight.bold,fontSize: 24),), // Escaped dollar sign
                                  ],
                                ),
                              ),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('\$14',style: TextStyle(color:Colors.black54,fontWeight: FontWeight.bold,fontSize: 24),), // Escaped dollar sign
                                    Icon(Icons.favorite_border, size: 24),
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                          width: MediaQuery.of(context).size.width / 2,
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 140,
                                child: Image.network(
                                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEip0HvQ1j22MUoOrQ13YqAeXQb-mGnhmzhyphenhyphenFKnriA9AdLPBM0ip6Mz_29MfBWq9L40q6rcrSeTXjQ2GkqaZjvDWF_JfCHfDWaIpZJ6lG4bwjlHF2wJ2wUUiMWwIjew9TivoSbfc1DQ04uQ/s1600/download+%25281%2529.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 4,),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('T-shirt',style: TextStyle(color:Colors.purple,fontWeight: FontWeight.bold,fontSize: 16),), // Escaped dollar sign
                                  ],
                                ),
                              ),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Sell clothes',style: TextStyle(color:Colors.black54,fontWeight: FontWeight.bold,fontSize: 24),), // Escaped dollar sign
                                  ],
                                ),
                              ),
                              const Flexible(
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('\$30',style: TextStyle(color:Colors.black54,fontWeight: FontWeight.bold,fontSize: 24),), // Escaped dollar sign
                                    Icon(Icons.favorite_border, size: 24),
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
