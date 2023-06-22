import 'package:flutter/material.dart';
import 'dart:ui';
import 'constants.dart';
import 'theme.dart';

class glassbox1 extends StatelessWidget {
  const glassbox1({Key? key,
  required this.child,
  required this.image,})
      : super(key: key);

  @override

  final child;
  final image;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 8.0,
                sigmaY: 8.0,
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(lc1).withOpacity(0.5),
                          Color(lc1).withOpacity(1),
                        ],
                      )
                  ),
                  child: child,
                ),
              ),
            ),
          )
      ),

    );
  }
}


class glassbox2 extends StatelessWidget {
  const glassbox2({Key? key,
    required this.child,
    required this.image,})
      : super(key: key);

  @override

  final child;
  final image;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 7.0,
                sigmaY: 7.0,
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.52),
                  ),
                  child: child,
                ),
              ),
            ),
          )
      ),

    );
  }
}