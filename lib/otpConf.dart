import'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:snackit/glass_effect.dart';
import 'package:snackit/signup_page2.dart';
import 'signup_page.dart';
import 'constants.dart';

class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: glassbox2(
        image: "assets/images/back_image.jpg",
          child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                          },
                          icon: Icon(Icons.arrow_back_rounded,
                              color: Colors.white), padding: EdgeInsets.only(left: 10),
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Text("OTP Verification", style: TextStyle(fontSize: 34, fontFamily: "Poppins2", color: Colors.white),),
                      SizedBox(height: 30.0,),
                      Text("We have sent code to +91 7838****03 ", style: TextStyle(fontFamily: "Poppins1",
                          fontSize: 16, color: Colors.white),),
                      SizedBox(height: 5.0,),
                      buildTimer(),
                      SizedBox(height: 50.0,),
                      Padding(
                          padding: EdgeInsets.only(left: 35.0, right: 35.0),
                          child: otpbox()),
                      SizedBox(height: 200.0,),
                      Container(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                        },
                          style: ElevatedButton.styleFrom(primary: Color(c1).withOpacity(0.5), elevation: 0,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                          child: Text("Change phone number",
                              style:TextStyle(fontSize: 16, fontFamily: "Poppins1", color: Colors.white)),
                        ),),
                      SizedBox(height: 30.0,),
                      Container(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup2()));
                        },
                          style: ElevatedButton.styleFrom(primary: Color(c2), elevation: 0,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                          child: Center(
                            child: Text("Continue",
                                style:TextStyle(fontSize: 16, fontFamily: "Poppins1", color: Colors.black)),
                          ),
                        ),)],),),
              ),
          )
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Code expire in ",
        style: TextStyle(fontSize: 14, fontFamily: "Poppins1",),),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child)=> Text(
            "00:${value.toInt()}",
            style: TextStyle(color: Color(c1)),
          ),
          onEnd: (){},)
      ],);
  }
}

class otpbox extends StatefulWidget {
  const otpbox({Key? key}) : super(key: key);

  @override
  State<otpbox> createState() => _otpboxState();
}

class _otpboxState extends State<otpbox> {
  static final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(fontSize: 20, color: Color(c2), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white60),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: Color(c1)),
    borderRadius: BorderRadius.circular(20),
  );

  final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration?.copyWith(
      color: Colors.black,
      boxShadow: [
        BoxShadow(
          color: Color(c2),
          blurRadius: 8.0,
        )
      ]
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Pinput(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      keyboardType: TextInputType.number,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => print(pin),
    );
  }
}


