import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:snackit/glass_effect.dart';
import 'login_page.dart';
import 'otpConf.dart';
import 'constants.dart';
import 'dart:ui';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: glassbox2(
        image: "assets/images/back_image.jpg",
        child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          SizedBox(height: 40.0,),
          Container(
            width: 334, height: 394,
            child: Image.asset('assets/images/welcome.png'),
          ),
          SizedBox(height: 20.0,),
          Text('Welcome',
            style: TextStyle(fontFamily: 'Poppins1', fontSize: 38, fontWeight: FontWeight.w500, color: Colors.white),),
          SizedBox(height: 30.0,),
          Container(
            child: SizedBox(
              width: 317,
              height: 53,
              child: ElevatedButton(style:ElevatedButton.styleFrom(primary: Color(c2),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.0)),
                  padding: EdgeInsets.all(15.0)),
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        )
                    ),
                    context: context, builder: (context) => buildsheet(),
                  );},
                child: Center(child: Text('Sign up with Email',
                  style: TextStyle(fontFamily: 'Poppins2', fontSize: 16, color: Colors.black,)),
              ),
            ),
          ),),
          SizedBox(height:28.0),
          Text('or', style: TextStyle(fontSize: 16, fontFamily: 'Poppins1',)),
          SizedBox(height: 24.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Spacer(),
              ElevatedButton(onPressed: (){},
                child: Image.asset('assets/icons/google.png',
                  width: 42.0, height: 42.0,),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(9.0),
                  primary: Colors.white,
                ),),
              SizedBox(width: 45.0,),
              ElevatedButton(onPressed: (){},
                child: Icon(FontAwesomeIcons.facebookF, color: Colors.white,size: 38.0,),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(11.0),
                  primary: Color(0xFF39579A),
                ),),
              Spacer(),
            ],),
          SizedBox(height: 40.0,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account ?  ', style: TextStyle(fontFamily: 'Poppins1', fontSize: 14,)),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> otp()));
                },
                    child: Text('Login', style: TextStyle(fontSize: 16, fontFamily: 'Poppins2', color: Color(c2),
                    ))),
              ],
            ),
          ),
        ],),)
      ),
    );
  }

  Widget buildsheet() => DraggableScrollableSheet(
    expand: false,
      initialChildSize: 0.8,
      minChildSize: 0.5,
      maxChildSize: 0.8,
      builder: (_, scrollController)=>Scaffold(
        // height: 600.0,
        resizeToAvoidBottomInset: true,
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              reverse: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 60.0,),
                  Padding(padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle: TextStyle(fontFamily: "Poppins1",color: Colors.white70),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 40, vertical: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white70, ),
                      gapPadding: 10,

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Color(c2), width: 1.5),
                      gapPadding: 10,
                    ),
                  ),
                ),
              ),
                  SizedBox(height: 40.0,),
                  Padding(padding: EdgeInsets.only(left:30.0, right: 30.0,),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Phone number",
                        labelStyle: TextStyle(fontFamily: "Poppins1", color: Colors.white70),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white70),
                          gapPadding: 10,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(c2), width: 1.5),
                          gapPadding: 10,),
                      ),
                    ),),
                  SizedBox(height: 50.0,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(c2),
                            blurRadius: 10.0,
                          )
                        ]
                      ),
                    child: SizedBox(
                      height: 60.0, width: 336,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.black, elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)), padding: EdgeInsets.all(14.0)), onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>otp())
                        );
                      },
                        child: Text('Continue', style: TextStyle(fontSize: 18, fontFamily: 'Poppins1', color: Color(c2)),),),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)),
                ],
              ),
  ),
            ),
        );
}

