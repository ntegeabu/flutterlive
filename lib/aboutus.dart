import 'package:flutter/material.dart';

class My extends StatefulWidget{
  // ignore: invalid_override
  @override
  _MyState createState() => _MyState();



}

class _MyState extends State<My>{

  final myController = TextEditingController();
  String fisrtNumber="";
  String SecondNumber="";




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STUDENTS REGISTRATION FORM',textDirection: TextDirection.ltr,style: TextStyle(color: Colors.green),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (text) {
                print("First text field: $text");
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: myController,
              decoration: InputDecoration(
                  labelText: 'Eenter FirstNumber',
                  hintText: '12345'


              ),
              onChanged: (String value){
                setState(() {
                  fisrtNumber=value;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Enter second Number",
                  hintText: '12345'
              ),
              onChanged: (String value){
                setState(() {
                  SecondNumber=value;
                });
              },

            ),
            Text("HELLO$fisrtNumber")

          ],
        ),
      ),
    );
  }

}

