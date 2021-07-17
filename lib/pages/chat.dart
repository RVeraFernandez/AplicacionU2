import 'package:flutter/material.dart';


class PageChat extends StatefulWidget {
  final String? username;
  const PageChat({ Key? key,  this.username }) : super(key: key);

  @override
  _PageChatState createState() => _PageChatState();
}

class _PageChatState extends State<PageChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Text('Chat para' + (widget.username ?? '<username>')),
          ),
        ),
      ),
    );
  }

  
}