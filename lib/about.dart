import 'package:flutter/material.dart';

class about extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("History of UCU",textDirection: TextDirection.ltr,),),
      body: Column(
        children: <Widget>[
          Image.asset("graphics/f.jpg",height: 50.0,width: 50.0,),
          Text("UCU is private university which was found by Church of Uganda in 1995\n"
              )
        ],
      ),
    );
  }

}