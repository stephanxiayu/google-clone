import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/responsive/mobilesreen_layout.dart';
import 'package:google_clone/responsive/responsiv_layoutscreen.dart';
import 'package:google_clone/responsive/webscreenlayout.dart';
import 'package:google_clone/screen/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Google Clone',
      theme: ThemeData.dark(   
      ).copyWith(
scaffoldBackgroundColor: backgroundColor

      ),
      home: const ResponsiveLayoutScreen(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout:WebScreenLayout() ,)
   
      
    );
  }
}

