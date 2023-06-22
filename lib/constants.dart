// import 'dart:js';

import 'package:flutter/material.dart';

const c1 = 0xFFFFD700;
const c2 = 0xFFFBBC05;
const c3 = 0xFFFFE970;
const c4 = 0xFFD6AD60;

//for linear gradient
const lc1 = 0xFF000000;
const lc2 = 0xFF3A3A3A;


// for sign up and signin
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
