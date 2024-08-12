import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class theme_data {
  static Color primarycolor =Color(0xffB7935F);
  static Color primarydarkcolor =Color(0xff141A2E);

  static ThemeData LightTheme=ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primarycolor
      )
    ),

    cardTheme: CardTheme(
      color: Colors.white,

    ),

    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: primarycolor
    ),
    dividerTheme: DividerThemeData(
      color: primarycolor
    ),

    textTheme: TextTheme(
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

      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
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
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       type: BottomNavigationBarType.fixed,
       showUnselectedLabels: false,
       showSelectedLabels: true,
       selectedItemColor: Colors.black,
       unselectedItemColor: Colors.white,
       backgroundColor: primarycolor,
     )
  );


  static ThemeData DarkTheme=ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
         backgroundColor: Colors.yellow
      )
    ),
    cardTheme: CardTheme(
      color: primarydarkcolor
    ),
    dividerTheme: DividerThemeData(
      color:Colors.yellow
    ),

      textTheme: TextTheme(
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
      appBarTheme: AppBarTheme(
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
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        backgroundColor:Color(0xff141A2E),
      ),
      bottomSheetTheme: BottomSheetThemeData(
       backgroundColor: Color(0xff141A2E),
       elevation: 0,

     )

  );

}