
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
              fit: BoxFit.fill,)),
        Scaffold(
          // backgroundColor: Colors.transparent,
          appBar: AppBar(


            // toolbarHeight: 100,
            // centerTitle: true,
            // elevation: 0,
            // backgroundColor: Colors.transparent,
             title: Text('اسلامي'),
          ),


          body: Card(
          elevation: 0,
            // color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)
            ),

            // decoration: BoxDecoration(
            //     color: Colors.white,
            //   borderRadius: BorderRadius.circular(40)
            // ),
            margin: EdgeInsets.only(
              left: 5,
              right: 5,
              top: 50,
              bottom: 10
            ),
            // padding: EdgeInsets.all(4.0),

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                     margin:EdgeInsets.only(
                        top: 10,
                       // bottom: 10
                     ),


                        child: Text(model.name,style: Theme.of(context).textTheme.bodyMedium)),
                    Container(

                        margin: EdgeInsets.only(
                            left: 10,
                          right: 10
                        ),
                        decoration: BoxDecoration(
                            color: pro.mode==ThemeMode.light?Colors.black:Colors.yellow,
                            borderRadius: BorderRadius.circular(50)
                        ),

                        child: Icon(Icons.arrow_right,
                          color:pro.mode==ThemeMode.light? Colors.white:Colors.black,
                          size: 30,))
                  ],
                ),
                Divider(
                  // color: Color(0xffB7935F),
                  thickness: 2,
                  indent: 80,
                   endIndent: 80,
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder:(context,index){
                      return Divider(
                        color: Colors.transparent,
                        thickness: 3,
                      );
                    },
                    itemCount: verses.length,
                      itemBuilder: (context,index){
                    return Text("${verses[index]}(${index+1}) ",
                      textDirection: TextDirection.rtl,
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