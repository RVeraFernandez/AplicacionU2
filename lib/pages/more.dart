import 'package:flutter/material.dart';

class PageMore extends StatefulWidget {
  const PageMore({ Key? key }) : super(key: key);

  @override
  _PageMoreState createState() => _PageMoreState();
}

class _PageMoreState extends State<PageMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Text('More page'),
          ),
        ),
      ),
    );
  }
}