import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/bottom_sheet_lan.dart';
import 'package:islami/provider.dart';
import 'package:provider/provider.dart';
import 'bottom_sheet_theme.dart';
class settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<provider>(context);
    return Container(
      margin: const EdgeInsets.only(
        top: 40.0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('theme'.tr(),style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),),
            InkWell(
              onTap: (){
                showModalBottomSheet(context: context,
                    shape: const RoundedRectangleBorder(
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
                margin: const EdgeInsets.symmetric(
                  vertical:15.0,
                  horizontal: 5.0
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
                  style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),),
              ),
            ),
            Text('language'.tr(),style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500
            ),),
            InkWell(
              onTap: (){
               showModalBottomSheet(context: context,
                   shape: const RoundedRectangleBorder(
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(20.0),
                       topRight: Radius.circular(20.0)
                     )
                   ),
                   builder: (context){
                 return bottom_sheet_lan();
                   });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical:15.0,
                    horizontal: 5.0
                ),
                padding: EdgeInsets.all(12.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text(
                  context.locale==const Locale('ar')?
                  'arabic'.tr():
                  'english'.tr(),
                  style: const TextStyle(
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