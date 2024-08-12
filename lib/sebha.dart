import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ahadeth.dart';
import 'package:islami/provider.dart';
import 'package:islami/theme_data.dart';
import 'package:islami/themeprovider.dart';
import 'package:provider/provider.dart';
class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _sebhaState();
}
class _sebhaState extends State<sebha> {
  double _angle = 0.0; // Initial angle of rotation

  void _rotateImage() {
    setState(() {
      _angle += pi /4; // Rotate by 45 degrees (pi/4 radians)
    });
  }
  int index=0;
  List<String>sebha=['سبحان الله ','الحمد لله ','الله اكبر'];
  int count=0;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    var pro =Provider.of<provider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       Container(
         margin: EdgeInsets.only(
           bottom: 10,
           top: 50
         ),
         child: Stack(
           alignment: Alignment.topCenter,
           children: [
             Image.asset(
               themeProvider.mode==ThemeMode.light?
               'assets/images/head_sebha.png':
               'assets/images/head_sebha_dark.png'

               ,
               height: 110,
             ),
             Container(
               margin: EdgeInsets.only(
                 top: 76
               ),
               child: Transform.rotate(
                 angle: _angle,
                 child: Image.asset(
                   themeProvider.mode==ThemeMode.light?
                   'assets/images/body_sebha.png':
                   'assets/images/body_sebha_dark.png'

                   ,
                   height: 200,
                    ),
               ),
             ),
           ],
         ),
       ),
        Center(
          child: Text('Numberofpraises'.tr(),style: Theme.of(context).textTheme.bodySmall),
        ),
        Container(

          margin: EdgeInsets.symmetric(
            vertical: 20
          ),
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: pro.mode==ThemeMode.light?theme_data.primarycolor:theme_data.primarydarkcolor
          ),
          child: Text('$count',style: Theme.of(context).textTheme.bodySmall),
        ),
        ElevatedButton(onPressed: (){
          _rotateImage();

          count++;
          if(count==34){
           index++;
           count=0;
          if(index==3){
            index=0;
          }
          }

          setState(() {
          });
        },
            style:ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5
              ),
              // backgroundColor: theme_data.primarycolor
            ),
            child:Text(sebha[index],style: Theme.of(context).textTheme.bodyLarge)
        )

      ],
    );
  }

}