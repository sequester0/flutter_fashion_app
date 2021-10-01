// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_s24/detail.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:math' as math;

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

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.more, color: Colors.grey, size: 22)),
            Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 22)),
            Tab(icon: Icon(Icons.navigation, color: Colors.grey, size: 16)),
            Tab(icon: Icon(Icons.supervised_user_circle, color: Colors.grey, size: 22)),
          ],
        ),
      ),

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
              //color: Colors.red,
              child: Container(
                height: 500,
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

                    SizedBox(height: 15),

                    Text(
                      'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends.',
                      style: GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
                    ),

                    SizedBox(height: 15),

                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detail(imgPath:'assets/modelgrid1.jpeg')));
                          },
                          child: Hero(
                            tag: 'assets/modelgrid1.jpeg',
                            child: Container(
                              height: 230,
                              width: (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage('assets/modelgrid1.jpeg'), fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detail(imgPath:'assets/modelgrid2.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  height: 110,
                                  width: (MediaQuery.of(context).size.width - 100) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage('assets/modelgrid2.jpeg'), fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detail(imgPath:'assets/modelgrid3.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid3.jpeg',
                                child: Container(
                                  height: 110,
                                  width: (MediaQuery.of(context).size.width - 100) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage('assets/modelgrid3.jpeg'), fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          child: Text('# Louis vuitton', style: GoogleFonts.montserrat(fontSize: 10, color: Colors.black.withOpacity(0.5)),),
                        ),
                        SizedBox(width: 10),
                        Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          child: Text('# Chloe', style: GoogleFonts.montserrat(fontSize: 10, color: Colors.black.withOpacity(0.5)),),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: Icon(Icons.reply, color: Colors.grey),
                        ),
                        SizedBox(width: 10),
                        Text('1.7k', style: GoogleFonts.montserrat(color: Colors.grey)),

                        SizedBox(width: 25),

                        Icon(Icons.comment, color: Colors.grey),
                        SizedBox(width: 10),
                        Text('325', style: GoogleFonts.montserrat(color: Colors.grey)),

                        SizedBox(width: 25),

                        SizedBox(
                          width: MediaQuery.of(context).size.width - 232,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.favorite, color: Colors.red),
                              SizedBox(width: 5),
                              Text('2.3k', style: GoogleFonts.montserrat(color: Colors.grey)),
                            ],
                          ),
                        ),
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