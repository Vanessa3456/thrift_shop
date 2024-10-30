// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:thrift_shop/constants.dart';
import 'package:thrift_shop/home.dart';

void main() {
  runApp(const Thrift());
}

class Thrift extends StatefulWidget {
  const Thrift({super.key});

  @override
  State<Thrift> createState() => _ThriftState();
}

class _ThriftState extends State<Thrift> {
  
  //TODO:Setup default theme
  ThemeMode themeMode = ThemeMode.light; //Manual theme toggle
  ColorSelection colorSelected = ColorSelection.grey;

  void changeThemeMode(bool useLightMode) {
    setState(() {
      themeMode = useLightMode
          ? ThemeMode.light //
          : ThemeMode.dark;
    });
  }

  void changeColor(int value) {
    setState(() {
      colorSelected = ColorSelection.values[value];
    });
  }

  @override
  Widget build(BuildContext context) {
    // const appTitle = 'Thrift Shops';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //ToDO:Add theme
      themeMode: themeMode,
      theme: ThemeData(
        colorSchemeSeed: colorSelected.color,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: colorSelected.color,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),

      //TODO:Replace scaffold with home widget
      home:Home(
        changeTheme: changeThemeMode,
         changeColor: changeColor, 
         colorSelected: colorSelected)
    );
  }
}
