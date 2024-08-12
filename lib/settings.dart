import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/bottom_sheet_lan.dart';
import 'package:islami/provider.dart';
import 'package:islami/theme_data.dart';
import 'package:provider/provider.dart';

import 'bottom_sheet_theme.dart';

class settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<provider>(context);
    return Container(
      margin: EdgeInsets.only(
        top: 60,
        left: 20
      ),
      child: Padding(

        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,


          children: [
            Text('theme'.tr(),style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),),
            // SizedBox(
            //   height: 10,
            // ),
            InkWell(
              onTap: (){
                showModalBottomSheet(context: context,
                    // backgroundColor: theme_data.primarycolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)

                        )
                    ),
                    builder: (context){
                  return bottom_sheet_theme();
                    });
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical:15,
                  horizontal: 5
                ),
                padding: EdgeInsets.all(12.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text(
                  pro.mode==ThemeMode.light?
                  'light'.tr():'dark'.tr(),
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),),
              ),
            ),

            Text('language'.tr(),style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),),
            InkWell(
              onTap: (){
               showModalBottomSheet(context: context,
                   // backgroundColor: theme_data.primarycolor,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(20),
                       topRight: Radius.circular(20)

                     )
                   ),
                   builder: (context){
                 return bottom_sheet_lan();
                   });
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                    vertical:15,
                    horizontal: 5
                ),
                padding: EdgeInsets.all(12.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text(
                  context.locale==Locale('ar')?
                  'arabic'.tr():
                  'english'.tr(),
                  style: TextStyle(
                  color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }

}