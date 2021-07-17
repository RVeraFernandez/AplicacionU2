import 'package:flutter/material.dart';
import 'package:navegacion/pages/chat.dart';
import 'package:navegacion/pages/home.dart';
import 'package:navegacion/pages/images.dart';
import 'package:navegacion/pages/more.dart';
import 'package:navegacion/pages/splash.dart';
import 'package:navegacion/pages/post.dart';

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (BuildContext context) => Home(),
        'more': (BuildContext context) => PageMore(),
        'chat': (BuildContext context) => PageChat(
          username: 'Gerardo',
        ),
        'post' : (BuildContext context) => PagePost(),
        'image': (BuildContext context) => PageImages(),
      },
      home: SplashPage(),
    );
  }
}