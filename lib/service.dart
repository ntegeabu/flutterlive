import 'package:flutter/material.dart';
class service extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("SERVICE OFFERED BY UCU"),),
      body: Card(
        child: ListView(children: <Widget>[
          ListTile(
            leading: Icon(Icons.computer),
            title:  Text("ICT"),
            subtitle: Text("COMPUTER TRAINING"),
          ),
          Divider(height: 16.0,indent: 0.0,color: Colors.green,),
          ListTile(
            leading: Icon(Icons.book),
            title:  Text("RESEARCH"),
            subtitle: Text("Testing and Experiment"),
          ),
          Divider(height: 16.0,indent: 0.0,color: Colors.green,),
          ListTile(
            leading:Icon(Icons.attach_money) ,
            title:  Text("financialAid"),
            subtitle: Text(" Loans and sc"),
          ),
          Divider(height: 16.0,indent: 0.0,color: Colors.green,),
          ListTile(
            leading: Icon(Icons.attach_money),
            title:  Text("Guidance and counseling"),
            subtitle: Text("The goal of counselling services is to provide an atmosphere where healing for the whole person can take place be it relational,\n spiritual, emotional or psychological."),
          ),
          Divider(height: 16.0,indent: 0.0,color: Colors.green,),
          ListTile(
            leading: Icon(Icons.healing),
            title:  Text("Health service"),
            subtitle: Text("COMPUTER TRAINING"),
          ),
          Divider(height: 16.0,indent: 0.0,color: Colors.green,),
          ListTile(
            leading: Icon(Icons.room_service),
            title:  Text("Catering service"),
            subtitle: Text("Wedding preparation"),
          ),
          Divider(height: 16.0,indent: 0.0,color: Colors.green,),
          ListTile(
            leading:Icon(Icons.people),
            title:  Text("KId care"),
            subtitle: Text("COMPUTER TRAINING"),
          ),

          Divider(height: 16.0,indent: 0.0,color: Colors.green,),
        ],),
      ),
    );
  }

}