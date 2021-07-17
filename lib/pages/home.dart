import 'package:flutter/material.dart';
import 'package:navegacion/pages/post.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 1,
        title: Text(
          'UTCH',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu
          ),
          onPressed: null,
        ),
        actions: _acciones(),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
          ),
        ),
      ),
    );
  }

  List<Widget> _acciones() {
    return [
      IconButton(onPressed: _callPost, icon: Icon(Icons.search)),
      IconButton(onPressed: _callMore, icon: Icon(Icons.more)),
      IconButton(onPressed: _callChat, icon: Icon(Icons.send)),
      IconButton(onPressed: _callImage, icon: Icon(Icons.image))
    ];
  }

  void _callChat() {
   /* final MaterialPageRoute ruta = MaterialPageRoute(builder: (context) => PageChat());
   Navigator.push(context, ruta); */
   Navigator.pushNamed(context, 'chat');
  }
  void _callMore() {
    Navigator.pushNamed(context, 'more');
  }
  void _callPost() {
    Navigator.pushNamed(context, 'post',
     arguments: PagePostArgs(username: 'gerardo', password: 'password'));
  }
  void _callImage() {
    Navigator.pushNamed(context, 'image');
  }
}


