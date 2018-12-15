import 'package:flutter/material.dart';
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class. This class will hold the data related to
// our Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller. We will use it to retrieve the current value
  // of the TextField!
  final m1Controller = TextEditingController();
  final m2Controller =TextEditingController();
  final m3Controller =TextEditingController();
  final m4Controller =TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    m1Controller.dispose();
    m2Controller.dispose();
    m3Controller.dispose();
    m4Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTRATION FORM',textDirection: TextDirection.ltr,),
      ),
      body: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: m1Controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Enter you first number',
                hintText: 'NTEGE'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: m2Controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Enter you second number',
                hintText:'ABUBAKALI' ,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: m3Controller,
              decoration: InputDecoration(
                labelText: 'Enter date of birth',
                hintText:'12345' ,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: m4Controller,
              decoration: InputDecoration(
                labelText: 'Enter course of application',
                hintText:'IT,BSS' ,
              ),
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog with the
        // text the user has typed into our text field.
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the user has typed in using our
                // TextEditingController
                content: Text(m1Controller.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}