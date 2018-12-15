
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'management.dart';
import 'service.dart';
import 'about.dart';
import 'Registration.dart';
import 'department.dart';
void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "UGANDA CHRISTIAN UNIVERSIT",
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      routes: <String, WidgetBuilder>{
        // When we navigate to the "/" route, build the FirstScreen Widget
        '/first':(BuildContext context) =>faculties(),
        // When we navigate to the "/second" route, build the SecondScreen Widget
       '/second': (BuildContext context) =>Management(),
       '/third': (BuildContext context) =>   service(),
      '/f': (BuildContext context) =>   about(),
        '/k': (BuildContext context) =>  MyCustomForm(),
      },

      home: Scaffold(
        appBar: AppBar(

          title: Text("UCUAPP",textDirection: TextDirection.ltr,textAlign: TextAlign.center,style: TextStyle(color: Colors.deepOrangeAccent),),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null, // null disablesntege
              // the button
            ),
            // Expanded expands its child to fill the available space.

            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            )
          ],
        ),
        drawer:
        Card(

          child:
          ListView(
            padding: EdgeInsets.zero,

            children: <Widget>[




              DrawerHeader(
                child: Text('UGANDA CHRISTIAN UNIVERSITY ',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,

                ),
              ),

              Material(
                color: Colors.tealAccent,
                child: Container(


                  child: InkWell(
                    highlightColor: Colors.teal,
                    splashColor: Colors.deepOrange,
                    onTap: () => Navigator.of(context).pushNamed('/first'),

                    child: Row(


                      children: <Widget>[


                        Padding(padding: EdgeInsets.all(16.0),
                          child: Icon(Icons.account_circle,size:60.0 , color: Colors.blue,),


                        ),Center(child: Text("MANAGEMENT"),)
                      ],
                    ),
                  ),
                ),
              ),
Divider(height: 16.0,indent: 0.0,color: Colors.purpleAccent,),
              Material(
                color: Colors.tealAccent,
                child: Container(


                  child: new GestureDetector(
                    //highlightColor: Colors.teal,
                    //splashColor: Colors.deepOrange,

                    onTap: () => Navigator.pushNamed(context, "/first"),

                    child: Row(


                      children: <Widget>[


                        Padding(padding: EdgeInsets.all(16.0),
                          child: Icon(Icons.account_balance,size:60.0 , color: Colors.deepOrange,),


                        ),Center(child: Text("FACULTIES"),)
                      ],
                    ),
                  ),
                ),
              ),
              Divider(height: 16.0,indent: 0.0,color: Colors.purpleAccent,),


              Material(
                color: Colors.tealAccent,
                child: Container(


                  child: InkWell(
                    highlightColor: Colors.teal,
                    splashColor: Colors.deepOrange,
                    onTap: (){
                      Navigator.pushNamed(context, '/third');


                    },

                    child: Row(


                      children: <Widget>[


                        Padding(padding: EdgeInsets.all(16.0),
                          child: Icon(Icons.accessible_forward,size:60.0 , color: Colors.purple,),


                        ),Center(child: Text("SERVICES"),)
                      ],
                    ),
                  ),
                ),
              ),
              Divider(height: 16.0,indent: 0.0,color: Colors.purpleAccent,),

              Material(
                color: Colors.tealAccent,
                child: Container(


                  child: InkWell(
                    highlightColor: Colors.teal,
                    splashColor: Colors.deepOrange,
                    onTap: (){
                      Navigator.pushNamed(context, '/k');


                    },

                    child: Row(


                      children: <Widget>[


                        Padding(padding: EdgeInsets.all(16.0),
                          child: Icon(Icons.explore,size:60.0 , color: Colors.teal,),


                        ),Center(child: Text("REGISTRATION"),)
                      ],
                    ),
                  ),
                ),
              ),
              Divider(height: 16.0,indent: 0.0,color: Colors.purpleAccent,),

              Material(
                color: Colors.tealAccent,
                child: Container(


                  child: InkWell(
                    highlightColor: Colors.teal,
                    splashColor: Colors.deepOrange,
                    onTap: (){
                      Navigator.pushNamed(context, '/f');



                    },

                    child: Row(


                      children: <Widget>[


                        Padding(padding: EdgeInsets.all(16.0),
                          child: Icon(Icons.accessibility,size:60.0 , color: Colors.blueGrey,),


                        ),Center(child: Text("ABOUT"),)
                      ],
                    ),
                  ),
                ),
              ),
              Divider(height: 16.0,indent: 0.0,color: Colors.purpleAccent,),

              Material(
                color: Colors.tealAccent,
                child: Container(


                  child: InkWell(
                    highlightColor: Colors.yellowAccent,
                    splashColor: Colors.deepOrange,
                    onTap: (){
                      Navigator.pushNamed(context, '/second');



                    },

                    child: Row(


                      children: <Widget>[


                        Padding(padding: EdgeInsets.all(16.0),
                          child: Icon(Icons.phone_in_talk,size:60.0 , color: Colors.pink,),


                        ),Center(child: Text("Contact"),)
                      ],
                    ),
                  ),
                ),
              )



            ],



          ),
        ),
        body:faculties (),
        floatingActionButton:
FloatingActionButton(onPressed: (){
  Navigator.pushNamed(context, '/second');
}
,child: Icon(Icons.explore,color: Colors.deepOrange,),)
        ,
        bottomNavigationBar: BottomAppBar(color: Colors.blueGrey,
        child: Container(height: 50.0,),

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      ),
    );
  }

}



class AnimatedLogo extends AnimatedWidget {
  AnimatedLogo({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: animation.value,
        width: animation.value,
        child:         CircleAvatar(
          backgroundImage: AssetImage('graphics/K.jpg'),
          radius: 100.0,
        ),

      ),
    );
  }
}

class LogoApp extends StatefulWidget {
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = Tween(begin: 0.0, end: 300.0).animate(controller);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();
  }

  Widget build(BuildContext context) {
    return AnimatedLogo(animation: animation);
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}

