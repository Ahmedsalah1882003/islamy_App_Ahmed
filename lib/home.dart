import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:session6/myThemeData.dart';
import 'package:session6/tabs/ahadeth_tab.dart';
import 'package:session6/tabs/quran_tab.dart';
import 'package:session6/tabs/radio_tab.dart';
import 'package:session6/tabs/sebha_tab.dart';
import 'package:session6/tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islami",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            backgroundColor: MyThemeData.primaryColor,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "Quran",
                  backgroundColor: MyThemeData.primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "Sebha",
                  backgroundColor: MyThemeData.primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "Radio",
                  backgroundColor: MyThemeData.primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: "Ahadeth",
                  backgroundColor: MyThemeData.primaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                  backgroundColor: MyThemeData.primaryColor),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTabe(),
    SebhaTabe(),
    RadioTabe(),
    AhadethTab(),
    SettingsTab()
  ];
}
