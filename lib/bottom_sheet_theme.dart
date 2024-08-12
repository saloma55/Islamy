import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider.dart';
import 'package:islami/theme_data.dart';
import 'package:islami/themeprovider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
class bottom_sheet_theme extends StatefulWidget{

  @override
  State<bottom_sheet_theme> createState() => _bottom_sheet_themeState();
}

class _bottom_sheet_themeState extends State<bottom_sheet_theme> {


  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    var pro1=Provider.of<provider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){

                  themeProvider.changeMode(ThemeMode.light);
                  pro1.changmode(ThemeMode.light);
                },
                child: Text(
                  'light'.tr(),style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                )

              ),

              ),
              pro1.mode==ThemeMode.light?
              Icon(Icons.done,size: 30,color: Colors.white,):
                  SizedBox(

                  )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){

                    themeProvider.changeMode(ThemeMode.dark);
                    pro1.changmode(ThemeMode.dark);
                  },
                  child: Text('dark'.tr(),style:pro1.mode==ThemeMode.dark?TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.yellow
                  ):
                  TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  )


                  ),
                ),
                pro1.mode==ThemeMode.dark?
                Icon(Icons.done,size: 30,color: Colors.white,):
                SizedBox(

                )


              ]
          )
        ],


      ),
    );
  }
}