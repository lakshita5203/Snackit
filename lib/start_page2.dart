import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'constants.dart';
import 'list.dart';
import 'glass_effect.dart';

class startpage2 extends StatefulWidget {
  const startpage2({Key? key}) : super(key: key);

  @override
  State<startpage2> createState() => _startpage2State();
}

class _startpage2State extends State<startpage2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (_, index){
            return glassbox2(
                image: "assets/images/back_image.jpg",
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 120.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(padding: const EdgeInsets.only(left:20.0, right: 20.0),
                                  child: Center(
                                    child: Text(text[index], textAlign: TextAlign.center,
                                        style: const TextStyle(fontFamily: 'Poppins2', fontSize: 24,
                                        color: Colors.white)),
                                  )),
                              SizedBox(height: index == 0? 60.0:40.0),
                              // Image.asset(images[index], height: 314,width: 329,),
                              Image.asset(images[index],
                                width: index == 0? 368:320,
                                height: index == 1? 330:294,),
                              SizedBox(height: index == 0? 68.0:50.0),
                              const Padding(padding: EdgeInsets.only(left: 20.0, right: 20.0),
                                  child: Center(
                                    child: Text('Order food through app & \n enjoy the movie and snacks!', textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18, fontFamily: 'Poppins2', fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      ),),
                                  ),
                              ),
                              const SizedBox(height: 50.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(2, (indexDots){
                                  return Container(
                                    margin: const EdgeInsets.only(right: 9.0),
                                    width: index == indexDots? 12: 10,
                                    height: index == indexDots? 12: 10 ,
                                    decoration: BoxDecoration(
                                        color : index == indexDots? const Color(c2): const Color(c3),
                                        shape: BoxShape.circle
                                    ),
                                  );
                                },
                                ),
                              ),
                              const SizedBox(height: 59.0,),
                              Row(
                                children: [
                                  Padding(padding: const EdgeInsets.only(left:25.0),
                                      child: GestureDetector(
                                        child: const Text('Skip', textAlign: TextAlign.left,style: TextStyle(fontSize: 20.0, fontFamily: 'Poppins1', fontWeight: FontWeight.w500,
                                            color: Color(c1))),
                                        onTap: (){
                                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const SignupPage()));
                                        },)
                                  )
                                ],
                              )
                            ]),
                      ),
                    )
                  ],
                ));
      })

    );
  }
}

