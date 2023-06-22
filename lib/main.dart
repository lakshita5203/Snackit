import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'start_page1.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     systemStatusBarContrastEnforced: true,
  //     systemNavigationBarColor: Colors.transparent,
  //     systemNavigationBarDividerColor: Colors.transparent,
  //     systemNavigationBarIconBrightness: Brightness.light,
  //     statusBarColor: Colors.transparent,
  //     statusBarIconBrightness: Brightness.light,)
  // );
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white70,
          displayColor: Colors.white70,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        body: Container(
            child: startpage1()
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   type: BottomNavigationBarType.fixed,
        //   backgroundColor: Colors.transparent,
        //   elevation: 0, items: [null],
      ),
    );
  }
}
