// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const FashionApp());

class FashionApp extends StatelessWidget {
  const FashionApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined, color: Colors.grey)),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Fashion App',
          style: GoogleFonts.montserrat(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          SizedBox(
            height: 130,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listElement('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 20),
                listElement('assets/model2.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 20),
                listElement('assets/model3.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 20),
                listElement('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 20),
                listElement('assets/model2.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 20),
                listElement('assets/model3.jpeg', 'assets/chanellogo.jpg'),
              ],
            ),
          ),

          // Card
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(16),
              color: Colors.red,
              child: Container(
                height: 450,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Profile Section
                    Row(
                      children: [
                        CircleAvatar(backgroundImage: AssetImage('assets/model1.jpeg'), radius: 35),
                        SizedBox(width: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 192,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Daisy', style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black87)),
                              Text('34 mins ago', style: GoogleFonts.montserrat(fontSize: 10, color: Colors.black38)),
                            ],
                          ),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget listElement(String imagePath, String logoPath) {
    return Column(
      children: [
        
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.center,
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown.shade400,
          ),
          child: Text('Follow', style: GoogleFonts.montserrat(color: Colors.white)),
        ),

      ],
    );
  }
}