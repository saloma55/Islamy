

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/ahadeth.dart';
import 'package:islami/hadeth_datails.dart';
import 'package:islami/home.dart';
import 'package:islami/moshaf.dart';
import 'package:islami/provider.dart';
import 'package:islami/radio.dart';
import 'package:islami/sebha.dart';
import 'package:islami/settings.dart';
import 'package:islami/suradetails.dart';
import 'package:islami/theme_data.dart';
import 'package:islami/themeprovider.dart';

import 'package:provider/provider.dart';

 // void main() async {
 //   WidgetsFlutterBinding.ensureInitialized();
 //  await EasyLocalization.ensureInitialized();
 //  runApp(ChangeNotifierProvider(
 //     create: (context)=>provider(),
 //       child: EasyLocalization(
 //         supportedLocales: [Locale('en'), Locale('ar')],
 //           path: 'assets/translations', // <-- change the path of the translation files
 //           child: MyApp())));
 // }
void main () async{
   WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(MultiProvider(
   providers: [
    ChangeNotifierProvider(create: (context) => provider(),),
    ChangeNotifierProvider(create: (context) => ThemeProvider(),)
   ],
      child: EasyLocalization(
        saveLocale: true,
          supportedLocales: [Locale('en'), Locale('ar')],
          path: 'assets/translations',
          child: MyApp())));

}






class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
   final themeProvider = Provider.of<ThemeProvider>(context);
   var pro=Provider.of<provider>(context);
    return SafeArea(
    child: MaterialApp(
    localizationsDelegates: context.localizationDelegates,
    supportedLocales: context.supportedLocales,
    locale: context.locale,
    theme: theme_data.LightTheme,

    darkTheme: theme_data.DarkTheme,
    // themeMode: pro.mode,
     themeMode: themeProvider.mode,

    initialRoute: home.routeName,
    debugShowCheckedModeBanner: false,
    routes: {
    hadeth_datails.routeName:(context)=>hadeth_datails(),
    suradetails.routeName:(context)=>suradetails(),
    home.routeName:(context)=>home()
    },
    )





    );
  }
}