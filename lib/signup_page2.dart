import 'package:flutter/material.dart';
import 'package:snackit/glass_effect.dart';
import 'package:snackit/login_page.dart';
import 'constants.dart';
import 'otpConf.dart';
import 'package:flutter/src/material/colors.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String?> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index]!)),
    );
  }

  Padding formErrorText({required String error}) {
    return Padding(
      padding: EdgeInsets.only(left: 40.0),
      child: Row(
        children: [
          Icon(Icons.error, size: 19, color: Colors.red[900],),
          SizedBox(width: 10.0,),
          Text(error, style: TextStyle(fontFamily: "Poppins1", fontSize: 10.0, color: Colors.red[600]),),
          ]
      ),
    );
  }
}

class Signup2 extends StatefulWidget {
  const Signup2({Key? key}) : super(key: key);

  @override
  State<Signup2> createState() => _Signup2State();
}


class _Signup2State extends State<Signup2> {

  List string = ["Email address", "Password", "Confirm password"];

  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? confirm_password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Container(
      //     child: Padding(padding: EdgeInsets.only(left: 40.0),
      //       child: Text("Complete your details",
      //       style: TextStyle(fontSize: 15, fontFamily: "Poppins1",)),
      //     ),
      //   ),
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.push(context, MaterialPageRoute(builder: (context)=>(otp())));
      //     },
      //     icon: Icon(Icons.arrow_back_rounded,
      //         color: Colors.white), padding: EdgeInsets.only(left: 10),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),

      body: glassbox2(
        image: "assets/images/back_image.jpg",
        child: Center(
          child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                          child: IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>(otp())));
                                },
                                icon: Icon(Icons.arrow_back_rounded,
                                    color: Colors.white), padding: EdgeInsets.only(left: 10),
                              ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                        Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              child: CircleAvatar(
                                radius: 60.0, backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white, radius: 18.0,
                                      child: Icon(
                                        Icons.camera_alt,
                                        size: 23.0,
                                        color: Color(0xFF404040),
                                      ),
                                    ),
                                  ),
                                  radius: 80.0, backgroundColor: Colors.transparent,
                                  // backgroundImage: AssetImage(
                                  //     'assets/images/user.png'),
                                ),
                              ),)
                        ),
                ]),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 25.0,),
                        Text("Lakshita Manie", style: TextStyle(fontFamily: "Poppins1", fontSize: 19, color: Colors.white),),
                        IconButton(onPressed: () {}, icon: Icon(Icons.edit, size: 20, color: Color(c1),), )
                      ],
                    ),
                    SizedBox(height: 50.0,),
                    Padding(padding: EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration:buildInputDecoration1(),
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (newValue) => email = newValue,
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              removeError(error: kEmailNullError);
                            } else if (emailValidatorRegExp.hasMatch(value)) {
                              removeError(error: kInvalidEmailError);
                            }
                            return null;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              addError(error: kEmailNullError);
                              return "";
                            } else if (!emailValidatorRegExp.hasMatch(value)) {
                              addError(error: kInvalidEmailError);
                              return "";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 35,),
                        TextFormField(
                          decoration: buildInputDecoration2(),
                          obscureText: true ,
                          onSaved: (newValue) => password = newValue,
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              removeError(error: kPassNullError);
                            } else if (value.length >= 8) {
                              removeError(error: kShortPassError);
                            }
                            return null;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              addError(error: kPassNullError);
                              return "";
                            } else if (value.length < 8) {
                              addError(error: kShortPassError);
                              return "";
                            }
                            return null;
                          },
                          ),
                        SizedBox(height: 35,),
                        TextFormField(
                          decoration: buildInputDecoration3(),
                          obscureText: true,
                          onSaved: (newValue) => confirm_password = newValue,
                          onChanged: (value) {
                            if (password == confirm_password) {
                              removeError(error: kMatchPassError);
                            }
                            return null;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              addError(error: kPassNullError);
                              return "";
                            } else if (confirm_password != password) {
                              addError(error: kMatchPassError);
                              return "";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),),
                        SizedBox(height: 20.0,),
                        Padding(padding: EdgeInsets.only(left: 30.0),
                          child: Row(
                            children: [
                              Checkbox(
                                value: remember,
                                side: BorderSide(color: Colors.white60),
                                activeColor: Color(c2),
                                onChanged: (value) {
                                  setState(() {
                                    remember=value;
                                  });
                                },
                              ),
                              Text("Remember me", style: TextStyle(fontFamily: "Poppins1"),),
                            ],
                          ),
                        ),
                    SizedBox(height: 40.0,),
                    FormError(errors: errors),
                    SizedBox(height: 30.0,),
                    SizedBox(
                      height: 50,
                      width: 330,
                      child: ElevatedButton(onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                              content: SizedBox(
                                height: 142.0,
                                child: Center(
                                  child: Column(
                            children: [
                                  Image.asset("assets/images/check.png", width: 123.0,height: 93.0,),
                                  ],
                            ),
                                ),
                              ),
                              actions: [
                                    GestureDetector(
                                    child: const Center(
                                      child: Text('Account created !',
                                          style: TextStyle(fontSize: 17.0, fontFamily: 'Poppins2',color: Colors.black)),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  loginpage()));
                                    }
                                    ),],);
                          });}
                      },
                        style: ElevatedButton.styleFrom(primary: Color(c2), elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)), ),
                        child: Center(
                          child: Text("Create Account",
                              style:TextStyle(fontSize: 16, fontFamily: "Poppins1",color: Colors.black)),
                        ),),),
                    SizedBox(height: 30.0,),
                    Text("By creating an account you agree to our",
                    style: TextStyle(fontFamily: "Poppins1", fontSize: 11,), textAlign: TextAlign.center,),
                    SizedBox(height: 3.0,),
                    Text("Terms of Services and Privacy Policy",
                      style: TextStyle(fontFamily: "Poppins1", fontSize: 11,), textAlign: TextAlign.center,),
                      ],),)),
        ),
      ),);
  }

  InputDecoration buildInputDecoration1() {
    return InputDecoration(
      labelText: "Email address",
                  labelStyle: TextStyle(color: Colors.white, fontFamily: "Poppins1",fontSize: 18.0),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Color(c2), width: 1.5),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    gapPadding: 10,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.red.shade900, width: 1.5),
                    gapPadding: 10
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.red.shade900, width: 1.5),
                    gapPadding: 10,
                  ),
                );
  }
}

InputDecoration buildInputDecoration2() {
  return InputDecoration(
    labelText: "Password",
      labelStyle: TextStyle(color: Colors.white, fontFamily: "Poppins1", fontSize: 18.0),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 16),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: Color(c2), width: 1.5),
        gapPadding: 10,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: Colors.white, width: 2),
        gapPadding: 10,
      ),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: Colors.red.shade900, width: 1.5),
        gapPadding: 10
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: Colors.red.shade900, width: 1.5),
      gapPadding: 10,
    ),
  );
}

InputDecoration buildInputDecoration3() {
  return InputDecoration(
    labelText: "Confirm password",
      labelStyle: TextStyle(color: Colors.white, fontFamily: "Poppins1", fontSize: 18.0),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 16),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: Color(c2), width: 2),
        gapPadding: 10,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: Colors.white, width: 1.5),
        gapPadding: 10,
      ),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: Colors.red.shade900, width: 1.5),
        gapPadding: 10
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: Colors.red.shade900, width: 1.5),
      gapPadding: 10,
    ),
  );
}




