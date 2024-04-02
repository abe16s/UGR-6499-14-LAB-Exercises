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
        backgroundColor: Colors.blue[800],
        appBar: AppBar(
          backgroundColor: Colors.purple[400],
          title: Text("BMI CALCULATOR"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.all(Radius.circular(20))),

                  child: Column(
                    children: [
                      Icon(Icons.male, size: 100, color: Colors.white,),
                      Text("Male")
                    ]
                  
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(

                    children: [
                      Icon(Icons.female, size: 100, color: Colors.white,),
                      Text("Female")
                    ]
                  ),
                ),

              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              

              child: Column(
                children: [
                  Text("Height"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "176",
                        style: TextStyle(
                          fontSize: 80,
                          color: Colors.white,
                        ),
                        
                      ),
                      Text("cm"),

                    ],
                  ),
                  Slider(value: 60, max: 100, min: 0, onChanged: onChanged)
                ],
              
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.all(Radius.circular(20))),

                  child: Column(
                    children: [
                      Text("Weight"),
                      Text(
                        "60",
                        style: TextStyle(
                          fontSize: 80,
                          color: Colors.white,
                        ),
                        
                      ),
                      Row(
                        children: [
                          Icon(Icons.add_circle_outline),
                          Icon(Icons.minimize),
                        ],
                      )
                    ]
                  
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.all(Radius.circular(20))),

                  child: Column(
                    children: [
                      Text("Age"),
                      Text(
                        "23",
                        style: TextStyle(
                          fontSize: 80,
                          color: Colors.white,
                        ),
                        
                      ),
                      Row(
                        children: [
                          Icon(Icons.add_circle_outline),
                          Icon(Icons.minimize),
                        ],
                      )
                    ]
                  
                  ),
                ),
              

              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(30),
              color: Colors.purple[400],
              child: Center(child: Text("CALCULATE", style: TextStyle(fontSize: 20),)),
            )
          ],
        ),
      ),
    );
  }

  void onChanged(double value) {
  }
}