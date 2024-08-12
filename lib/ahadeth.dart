import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth_datails.dart';
import 'package:islami/hadeth_model.dart';
import 'package:islami/theme_data.dart';

class ahadeth extends StatefulWidget{
  @override
  State<ahadeth> createState() => _ahadethState();
}

class _ahadethState extends State<ahadeth> {
  List<hadeth_model>all=[];

  @override
  Widget build(BuildContext context) {
    if(all.isEmpty){
      loadfile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 30
          ),
            child: Image.asset('assets/images/hadith_header.png',height: 219,)),
        Divider(


          // color: theme_data.primarycolor,
          thickness: 2,
        ),
        Center(
          child: Text('ahadith'.tr(),style: Theme.of(context).textTheme.bodySmall),
        ),
        Divider(


          // color: theme_data.primarycolor,
          thickness: 2,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context,index){
              return Divider(
                color: Colors.transparent,
              );
            },
            itemCount: all.length,
              itemBuilder:(context,index){
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, hadeth_datails.routeName,
                 arguments: hadeth_model(title: all[index].title, content: all[index].content));
                setState(() {

                });
              },
              child: Text('الحديث رقم ${index+1}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall),
            );
          }),
        )
        

      ],
    );
  }

  loadfile()async{
    String ahadith=await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>hadith=ahadith.split('#');
    for(int i=0;i<hadith.length;i++){
      String hadithone=hadith[i];
      List<String>lines=hadithone.trim().split('\n');
      String title=lines[0];
      lines.removeAt(0);
      List<String> content=lines;
      hadeth_model Hadeth_model=hadeth_model(title: title, content: content);
      all.add(Hadeth_model);
    }
    setState(() {
      
    });

    





  }
}
