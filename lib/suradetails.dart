
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/provider.dart';
import 'package:islami/sura.dart';
import 'package:islami/themeprovider.dart';
import 'package:provider/provider.dart';
class suradetails extends StatefulWidget{
 static const String routeName='sura';
  @override
  State<suradetails> createState() => _suradetailsState();
}
class _suradetailsState extends State<suradetails> {
  List<String>verses=[];
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    var pro=Provider.of<provider>(context);
    var model=ModalRoute.of(context)?.settings.arguments as sura;
    loadfile(model.index);
    return Stack(
      children: [
        Container(
          width: double.infinity,
            child: Image.asset(
              themeProvider.mode==ThemeMode.light?
              'assets/images/background.jpg':
              'assets/images/bg_dark.jpg',
              fit: BoxFit.fill,)
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('islami'.tr()),
          ),
          body: Card(
          elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)
            ),
            margin: const EdgeInsets.only(
              top: 40.0,
              bottom: 10.0
            ),
            child: Column(
              children: [
                Container(
                 margin:const EdgeInsets.only(
                    top: 12.0
                 ),
                    child: Text(model.name,style: Theme.of(context).textTheme.bodyMedium)),
                const Divider(
                  thickness: 2,
                  indent: 80,
                   endIndent: 80,
                ),
                const SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder:(context,index){
                      return const Divider(
                        color: Colors.transparent,
                        thickness: 3,
                      );
                    },
                    itemCount: verses.length,
                      itemBuilder: (context,index){
                    return Text("${verses[index]}(${index+1}) ",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 28,
                        fontWeight: FontWeight.w500
                      ));
                  }),
                ),
              ],
            ),
          ),
        )
      ],

    );
  }

  loadfile(int index)async{
   String file=await rootBundle.loadString('assets/files/${index+1}.txt');
   List<String>lines=file.split("\n");
   verses=lines;
   setState(() {

   });


  }
}