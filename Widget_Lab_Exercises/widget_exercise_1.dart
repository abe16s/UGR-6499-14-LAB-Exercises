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
        appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Icon(Icons.back_aroo)
                Icon(Icons.arrow_back),
                Row(
                  children: [
                    Icon(Icons.upload),
                    SizedBox(width: 10),
                    Icon(Icons.settings),
                  ]
                
                )
              ],
            ),
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              
              borderRadius: BorderRadius.circular(8),
              child: Image.asset("assets/car.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "1975 Porsche 911 Carrera",
                style: GoogleFonts.alice(
                  fontSize: 32, fontWeight: 
                  FontWeight.bold),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.only(right: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(children: [Icon(Icons.thumb_up_alt_outlined), SizedBox(width: 10,), Text("0")],),
                  Row(children: [Icon(Icons.comment_outlined), SizedBox(width: 10,), Text("0")],),
                  Row(children: [Icon(Icons.screen_share_outlined), SizedBox(width: 10,), Text("Share")],),
                ],
              ),
            ),
        
            Padding(
              padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Essential Information",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "1 of 3 done",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1.5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle, color: Colors.green[500],),
                          SizedBox(width: 5,),
                          Text(
                            "Year, Make, Model, VIN",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                      Icon(Icons.edit),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Year: 1975"),
                      Text("Make: Porsche"),
                      Text("Model: 911 Carrera"),
                      Text("VIN: 9115400029"),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.check_circle),
                      SizedBox(width: 5,),
                      Text(
                        "Description",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Icon(Icons.edit),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.check_circle,),
                      SizedBox(width: 5,),
                      Text(
                        "Photos",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Icon(Icons.edit),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}