import 'package:assingment/app_color.dart';
import 'package:assingment/screen/dasrboard.dart';
import 'package:flutter/material.dart';
class AppDasrboard extends StatefulWidget {
  const AppDasrboard({Key? key}) : super(key: key);

  @override
  State<AppDasrboard> createState() => _AppDasrboardState();
}

class _AppDasrboardState extends State<AppDasrboard> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("eMart",
          style: TextStyle(color: AppColor.gray500,fontSize: 24,fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColor.white500,
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            child:Icon(Icons.qr_code,
              size: 28,),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child:Icon(Icons.search,
              size: 28,),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child:Icon(Icons.shopping_cart_outlined,
            size: 28,),
          ),
        ],
      ),
      drawer: const Drawer() ,
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: 140,
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
               GridView.count(crossAxisCount:2,
                 shrinkWrap: true,
                 physics:const NeverScrollableScrollPhysics(),
                 children:<Widget> [
                   Container(
                     margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                     child: Card(
                       child: InkWell(
                         onTap: () {},
                         child: Padding(
                           padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                           child: Center(  // Centers the content inside the Card
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               mainAxisSize: MainAxisSize.min,
                               children: [
                                 Expanded(  // Wrap the image with Expanded
                                   child: Image.asset(
                                     'assets/images/img_2.jpg',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 const SizedBox(height: 10), // Adds spacing between the image and text
                                 Text('Cosmetic', style: TextStyle(fontSize: 16.0)),
                               ],
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   Container(
                     margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                     child: Card(
                       child: InkWell(
                         onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Dasrboard()));},
                         child: Padding(
                           padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                           child: Center(  // Centers the content inside the Card
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               mainAxisSize: MainAxisSize.min,
                               children: [
                                 Expanded(  // Wrap the image with Expanded
                                   child: Image.asset(
                                     'assets/images/img.jpg',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 const SizedBox(height: 10), // Adds spacing between the image and text
                                 Text('Fashion', style: TextStyle(fontSize: 16.0)),
                               ],
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   Container(
                     margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                     child: Card(
                       child: InkWell(
                         onTap: () {},
                         child: Padding(
                           padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                           child: Center(  // Centers the content inside the Card
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               mainAxisSize: MainAxisSize.min,
                               children: [
                                 Expanded(  // Wrap the image with Expanded
                                   child: Image.asset(
                                     'assets/images/to.jpg',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 const SizedBox(height: 10), // Adds spacing between the image and text
                                 Text('Restuarent', style: TextStyle(fontSize: 16.0)),
                               ],
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   Container(
                     margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                     child: Card(
                       child: InkWell(
                         onTap: () {},
                         child: Padding(
                           padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                           child: Center(  // Centers the content inside the Card
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,

                               mainAxisSize: MainAxisSize.min,
                               children: [
                                 Expanded(  // Wrap the image with Expanded
                                   child: Image.asset(
                                     'assets/images/img.jpg',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 const SizedBox(height: 10), // Adds spacing between the image and text
                                 Text('Car Service', style: TextStyle(fontSize: 16.0)),
                               ],
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   Container(
                     margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                     child: Card(
                       child: InkWell(
                         onTap: () {},
                         child: Padding(
                           padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                           child: Center(  // Centers the content inside the Card
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               mainAxisSize: MainAxisSize.min,
                               children: [
                                 Expanded(  // Wrap the image with Expanded
                                   child: Image.asset(
                                     'assets/images/vi.jpg',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 const SizedBox(height: 10), // Adds spacing between the image and text
                                 Text('Food Grocery', style: TextStyle(fontSize: 16.0)),
                               ],
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   Container(
                     margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                     child: Card(
                       child: InkWell(
                         onTap: () {},
                         child: Padding(
                           padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                           child: Center(  // Centers the content inside the Card
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               mainAxisSize: MainAxisSize.min,
                               children: [
                                 Expanded(  // Wrap the image with Expanded
                                   child: Image.asset(
                                     'assets/images/shop.jpg',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 const SizedBox(height: 10), // Adds spacing between the image and text
                                 Text('Parcel', style: TextStyle(fontSize: 16.0)),
                               ],
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),

                 ],
               ),
             ],
           )
          ],
        ),
      ),

    );
  }
}
