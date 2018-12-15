import 'package:flutter/material.dart';

class r extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20.0),
      crossAxisSpacing: 10.0,
      crossAxisCount: 2,
      children: <Widget>[
        Image.asset('graphics/r.jpg'),

        Image.asset('graphics/w.jpg'),

        Image.asset('graphics/f.jpg'),
        Image.asset('graphics/K.jpg'),

        Image.asset('graphics/t.jpg'),

        Image.asset('graphics/W.jpg'),


      ],
    )
    ;
  }

}