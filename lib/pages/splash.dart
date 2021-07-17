import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:after_layout/after_layout.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with AfterLayoutMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(radius: 20, ),
      ),
    );
  }
  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(Duration(seconds: 2))
    //.then((_) => Navigator.pushNamed(context, 'home'));
    .then((_) => Navigator.pushReplacementNamed(context, 'home'));
  }
}