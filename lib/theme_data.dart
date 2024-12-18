import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class theme_data {
  static Color primarycolor =Color(0xffB7935F);
  static Color primarydarkcolor =Color(0xff141A2E);
  // LightTheme
  static ThemeData LightTheme=ThemeData(
    // For elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primarycolor
      )
    ),
    // For Card
    cardTheme: const CardTheme(
      color: Colors.white,

    ),
   // For bottom sheet
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: primarycolor
    ),
    // For divider
    dividerTheme: DividerThemeData(
      color: primarycolor
    ),
    // For Text
    textTheme: const TextTheme(
     bodySmall:TextStyle(
       fontSize: 25,
       fontWeight: FontWeight.w400,
       color: Colors.black
     ),
      bodyMedium:TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Colors.black
      ) ,
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w400
      )
    ),
    // For Scaffold
      scaffoldBackgroundColor: Colors.transparent,
      // For Appbar
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 28,
          color: Colors.black,
          fontWeight: FontWeight.w500
        ),
        iconTheme: IconThemeData(
           
          color: Colors.black,
          size: 30
        ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,

      ),
     // For BottomnavigationBar
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       type: BottomNavigationBarType.fixed,
       showUnselectedLabels: false,
       showSelectedLabels: true,
       selectedItemColor: Colors.black,
       unselectedItemColor: Colors.white,
       backgroundColor: primarycolor,
     )
  );

  // DarkTheme:
  static ThemeData DarkTheme=ThemeData(

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
         backgroundColor: Colors.yellow
      )
    ),

    cardTheme: CardTheme(
      color: primarydarkcolor
    ),

    dividerTheme: const DividerThemeData(
      color:Colors.yellow
    ),

      textTheme: const TextTheme(
          bodySmall:TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Colors.white
          ),
          bodyMedium:TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Colors.yellow
          ),
          bodyLarge: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w400
          )


      ),

      scaffoldBackgroundColor: Colors.transparent,

      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.w500
        ),
        iconTheme: IconThemeData(

            color: Colors.white,
            size: 30
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,

      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        backgroundColor:Color(0xff141A2E),
      ),

      bottomSheetTheme: const BottomSheetThemeData(
       backgroundColor: Color(0xff141A2E),
       elevation: 0,

     )

  );

}