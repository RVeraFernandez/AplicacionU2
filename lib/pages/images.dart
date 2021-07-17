import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PageImages extends StatefulWidget {
  const PageImages({ Key? key }) : super(key: key);

  @override
  _PageImagesState createState() => _PageImagesState();
}

class _PageImagesState extends State<PageImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 300,
                        height: 300,
                        color: Colors.blue,
                        child: CachedNetworkImage(
                            imageUrl: "http://via.placeholder.com/300x300",
                            progressIndicatorBuilder: (context, url, downloadProgress) => 
                                    CircularProgressIndicator(value: downloadProgress.progress),
                            errorWidget: (context, url, error) => Icon(Icons.error),
                        ), 
                      ),
                      Positioned(
                        right: 30,
                        top: 30,
                         child: Text('Imagen 300x300'),
                      )
                    ],
                  ),
                )
              )
            ],
          ),
        )
      ),
    );
  }
}