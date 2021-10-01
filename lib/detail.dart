// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Detail extends StatefulWidget {

  String imgPath;

  Detail({ required this.imgPath, Key? key }) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.imgPath), fit: BoxFit.cover),
              ),
            ),
          ),

          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(8),
              elevation: 4,
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(image: AssetImage('assets/dress.jpg'), fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('LAMINATED', style: GoogleFonts.montserrat(fontWeight:FontWeight.w500, fontSize: 24)),
                            SizedBox(height: 5),
                            Text('Louis vuitton', style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 18)),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 35,
                              width: MediaQuery.of(context).size.width - 162,
                              child: Text('One button V-neck sling long-sleeved waist female stitching dress.', style: GoogleFonts.montserrat(color: Colors.grey, fontWeight: FontWeight.w300, fontSize:13)),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Divider(indent: 20, endIndent: 20),

                    Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$6500', style: GoogleFonts.montserrat(fontSize:22)),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: FloatingActionButton(
                              onPressed: (){}, 
                              child: Icon(Icons.arrow_forward_ios),
                              backgroundColor: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 50,
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('LAMINATED', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.w500)),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}