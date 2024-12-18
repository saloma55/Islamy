import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/hadeth_model.dart';
import 'package:islami/provider.dart';
import 'package:islami/themeprovider.dart';
import 'package:provider/provider.dart';
class hadeth_datails extends StatelessWidget{
  static const String routeName='hadeth';
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    var pro=Provider.of<provider>(context);
    var model=ModalRoute.of(context)?.settings.arguments as hadeth_model;
    return Stack(
      children: [
        Container(width: double.infinity,
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
          body: Padding(
            padding:  const EdgeInsets.symmetric(
              horizontal: 3.0
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
              ),
              margin:  const EdgeInsets.only(
                top: 30.0,
                bottom: 10.0
              ),

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          top: 10.0
                      ),
                      child: Center(
                        child: Text(model.title,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 30.0
                          )),
                      ),
                    ),
                     const Divider(
                      thickness: 2,
                      indent: 80,
                      endIndent: 80,
                    ),
                     const SizedBox(
                       height: 12,
                    ),
                    Expanded(child:
                    ListView.builder(
                      itemCount: model.content.length,
                        itemBuilder: (context,index){
                      return Text(model.content[index],
                        style: Theme.of(context).textTheme.bodyMedium
                      );
                    }))
                  ],

                ),
              ),
            ),
          ),
        )
      ],
    );
  }

}