import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class bottom_sheet_lan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Padding(
  padding: const EdgeInsets.symmetric(
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
              context.setLocale(const Locale('ar'));
            },
            child: Text('arabic'.tr(),style:context.locale==const Locale('ar')?const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.yellow
            ):
            const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white
            )
            ),
          ),
           context.locale==const Locale('ar')?const Icon(Icons.done,size: 30,color: Colors.white,):
               const SizedBox()
        ],
      ),
      const SizedBox(height: 15),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                 context.setLocale(const Locale('en'));
              },
              child: Text('english'.tr(),style:context.locale==const Locale('en')?const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.yellow
              ):
              const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
              ),),
            ),
            context.locale==const Locale('en')?const Icon(Icons.done,size: 30,color: Colors.white,):
            const SizedBox()
          ]
      )
    ],
  ),
);}
}