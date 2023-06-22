import 'dart:ui';
import 'package:flutter/material.dart';
import 'glass_effect.dart';
import 'start_page2.dart';
import 'constants.dart';
import 'list.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'theme.dart';

class startpage1 extends StatefulWidget {
  const startpage1({Key? key}) : super(key: key);

  @override
  State<startpage1> createState() => _startpage1State();
}

class _startpage1State extends State<startpage1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: glassbox1(
        image: "assets/images/intro.png",
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 120.0,
                ),
                Text("Snackup",style: TextStyle(fontFamily: "Poppins1", fontSize: 42, color: Color(c1)), textAlign: TextAlign.center, ),
                SizedBox(height: 30.0,),
                CarouselSlider(
                    items: carousel.map((e){
                      return Container(
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: ClipRRect(
                          child: Image.asset(e,
                          fit: BoxFit.contain,),
                        ),);
                    }).toList(),
                    options: CarouselOptions(
                      height: 423,
                      viewportFraction: 1,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayInterval: Duration(seconds: 2),
                      pageSnapping: true,
                      aspectRatio: 16/9,
                    )),
                SizedBox(height: 80.0,),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(c2), blurRadius: 8.0,
                      )]),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),  padding: EdgeInsets.all(14.0)), onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>startpage2())
                      );
                    },
                      child: Text('Get Started', style: TextStyle(fontSize: 13, fontFamily: 'Poppins1', color: Color(c1)),),),
                  ),],),),);
        }
}





