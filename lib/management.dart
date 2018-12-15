import 'package:flutter/material.dart';

class Management extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Hero(tag:"dash", child: Image.asset("graphic/f.jpg"));
  }

}

class Details extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Hero(tag: "DASH", child: Text("",textDirection: TextDirection.ltr,));
  }

}
