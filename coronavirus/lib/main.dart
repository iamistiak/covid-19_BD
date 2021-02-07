import 'package:coronavirus/home.dart';
import 'package:coronavirus/provider/bd_provider.dart';
import 'package:coronavirus/provider/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => GlobalProvider()),
      ChangeNotifierProvider(create: (context) => BdProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/coronavirus.jpg'), fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: MyHomePage(),
        ),
      ),

    ),
    );
  }
}
