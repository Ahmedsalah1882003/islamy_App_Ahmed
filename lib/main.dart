import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:session6/home.dart';
import 'package:session6/myThemeData.dart';
import 'package:session6/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        SuraDetailsScreen.routeName:(context)=>SuraDetailsScreen(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.lightTheme,
    );
  }
}


