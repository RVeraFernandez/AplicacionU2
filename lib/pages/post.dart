import 'package:flutter/material.dart';
import 'package:navegacion/utils/data.dart';

class PagePost extends StatefulWidget {
  const PagePost({ Key? key }) : super(key: key);

  @override
  _PagePostState createState() => _PagePostState();
}

class _PagePostState extends State<PagePost> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PagePostArgs;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                //child: Center(child: Text("Usuario: ${args.username}"))
                child: Center(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int indice) {
                      final String dato = testData[indice];
                      return ListTile(
                        title: Text(dato),
                        leading: Icon(Icons.menu_book_sharp),
                        onLongPress: () {},
                        onTap: () {
                          final snackBar = SnackBar(content: Text("Seleccionaste en ${dato}"));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      );
                    }, itemCount: testData.length,
                  )
                )
              )
            ],
          ),
        ),
      )
    );
  }
}


class PagePostArgs {
  final String username, password;
  final bool admin;

  PagePostArgs({required this.username,required this.password, this.admin = false});
}