import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider.dart';
import 'package:islami/provider.dart';
import 'package:islami/provider.dart';
import 'package:islami/radio.dart';
import 'package:islami/sebha.dart';
import 'package:islami/settings.dart';
import 'package:islami/themeprovider.dart';
import 'package:provider/provider.dart';

import 'ahadeth.dart';
import 'moshaf.dart';

class home extends StatefulWidget{
  static const String routeName='home';

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  List<Widget>tabs=[
    ahadeth(),
    radio(),
    sebha(),
    moshaf(),
  settings()
  ];

  int index=0;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    var pro=Provider.of<provider>(context);
    return Stack(
      children:[
        Container(
          width: double.infinity,
            child: Image.asset(
              themeProvider.mode==ThemeMode.light?
                'assets/images/background.jpg':
              'assets/images/bg_dark.jpg',
                fit: BoxFit.fill

            )
        ),
        Scaffold(

          backgroundColor: Colors.transparent,
          appBar: AppBar(
            // backgroundColor: Colors.transparent,
            title: Text('islami'.tr()),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value){
                index=value;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png'),size: 30),label: 'الاحاديث'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png'),size: 30),label: 'الراديو'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png'),size: 30),label: 'السبحة'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/moshaf.png'),size: 30),label: 'القران'),
                BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'الاعدادات')

              ]),
          body: tabs[index],

        ),
      ],
    );

  }
}