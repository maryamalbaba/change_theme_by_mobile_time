import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imagetheme/Homepage.dart';
import 'package:imagetheme/ModeTheme.dart';
import 'package:imagetheme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => themPageProvider(), child: MyApp()));
}


class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      
    return MaterialApp(
      theme: Provider.of<themPageProvider>(context).isLighEnable
          ? modeTheme.lightmode
          : modeTheme.darkmode
      //Provider.of<themPageProvider>(context).isLighEnable?true:Modetheme.light,
      ,
      home: HomePage(
          isLight: Provider.of<themPageProvider>(context).isLighEnable),
    );
  }
}
