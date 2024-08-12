import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/theme_data.dart';

class bottom_sheet_lan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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
              context.setLocale(Locale('ar'));
            },
            child: Text('arabic'.tr(),style:context.locale==Locale('ar')?TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.yellow
            ):
            TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white
            )
            ),
          ),
           context.locale==Locale('ar')?Icon(Icons.done,size: 30,color: Colors.white,):
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
                 context.setLocale(Locale('en'));
              },
              child: Text('english'.tr(),style:context.locale==Locale('en')?TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.yellow
              ):
              TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
              ) ,
            ),

            ),
            context.locale==Locale('en')?Icon(Icons.done,size: 30,color: Colors.white,):
            SizedBox(

            )
          ]
      )
    ],


  ),
);
  }

}