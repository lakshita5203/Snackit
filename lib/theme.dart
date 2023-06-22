import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class size {
  static double ? width;
  static double ? height;

  void init(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
  }
}

