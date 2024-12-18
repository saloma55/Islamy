import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth_datails.dart';
import 'package:islami/hadeth_model.dart';
class ahadeth extends StatefulWidget{
  @override
  State<ahadeth> createState() => _ahadethState();
}
class _ahadethState extends State<ahadeth> {
  List<hadeth_model>allahadith=[];
  @override
  Widget build(BuildContext context) {
    if(allahadith.isEmpty){
      loadfile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 30.0
          ),
            child: Image.asset('assets/images/hadith_header.png',height: 219,)),
        const Divider(
          thickness: 2,
        ),
        Center(
          child: Text('ahadith'.tr(),style: Theme.of(context).textTheme.bodySmall),
        ),
        const Divider(
          thickness: 2,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context,index){
              return const Divider(
                color: Colors.transparent,
              );
            },
            itemCount: allahadith.length,
              itemBuilder:(context,index){
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, hadeth_datails.routeName,
                 arguments: hadeth_model(title: allahadith[index].title, content: allahadith[index].content));
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
      String Hadith=hadith[i];
      List<String>lines=Hadith.trim().split('\n');
      String title=lines[0];
      lines.removeAt(0);
      List<String> content=lines;
      hadeth_model Hadeth_model=hadeth_model(title: title, content: content);
      allahadith.add(Hadeth_model);
    }
    setState(() {
      
    });

  }
}
