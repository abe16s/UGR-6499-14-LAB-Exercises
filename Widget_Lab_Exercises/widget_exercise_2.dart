import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Cart"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.shopping_cart, size: 50,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shopping Cart",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                    Text(
                        "Verify your quality and click checkout",
                        style: TextStyle(color: Colors.grey),
                      )
                  ],
                )
              ],
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 200,
                            child: Image.asset("assets/car.jpg")),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Text("Salads"),
                              Text("\$15.00"),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.add_circle),
                          Text("1.0"),
                          Icon(Icons.minimize_rounded),
                  
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 200,
                            child: Image.asset("assets/car.jpg")),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Text("Angel Hair"),
                              Text("\$22.9"),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.add_circle),
                          Text("1.0"),
                          Icon(Icons.minimize_rounded),
                  
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 100,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
                    children: [
                      Text("Subtotal"),
                      Text("\$60.98")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
                    children: [
                      Text("TAX(10.0%)"),
                      Text("\$6.10")
                    ],
                  ),


                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Center(child: Text("Checkout", style: TextStyle(fontSize: 20),)),
                  )

                ],
              ),
            )
          ],
        ),

      )
    );
  }

}