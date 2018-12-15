import 'package:flutter/material.dart';
import 'main.dart';
import 'about.dart';
import 'service.dart';
import 'aboutus.dart';
import 'x.dart';
class faculties extends StatelessWidget{
  final controller=PageController(
    initialPage:1 ,
  );



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(title: Text("Faculties",textDirection: TextDirection.ltr,),),
        body:PageView(
          scrollDirection: Axis.horizontal,reverse: true,controller: controller,children: <Widget>[childMinistry(),Education(),Law(),Bussiness(),informationTechnology(),LogoApp(),about(),My(),service(),r()],
        )

    );
  }

}
class childMinistry   extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Faculty of Socience Science",textDirection: TextDirection.ltr,),),
      body:ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const Text('Bachelor of Development & SocialAdministration'),
          const Text('Bachelor of Development&SocialEntreprenership'),
          const Text('Bachelor of SocialWork and SocialAdministration'),
          const Text('Bachelor of  Orgnisation and Development Management'),
          Image.asset("graphics/f.jpg")

        ],
      ) ,

    );
  }

}
class Education extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Faculty Of Education &Arts",textDirection: TextDirection.ltr,),),
      body:ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const Text('Bachelor of Education'),
          const Text('Diploma in Education'),
          const Text('Certificate in Education'),
          Image.asset("graphics/g.jpg")


        ],
      ) ,

    );
  }

}
class Law extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Faculty of Law",textDirection: TextDirection.ltr,),),
      body:ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const Text('Bachelor of Law'),
          const Text('Diploma in law'),
          const Text('Certificate in Education'),
          const Text('And I thought I was so smart'),
          Image.asset("graphics/r.jpg")

        ],
      ) ,

    );
  }

}
class Bussiness extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("faculty of journalism,Media ",textDirection: TextDirection.ltr,),),
      body:ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const Text('Bacheor of MultiMedia'),
          const Text('Bacheor of  Mass Communication'),
          const Text('Bacheor of journalism'),
Image.asset("graphics/f.jpg")
        ],
      ) ,

    );
  }

}
class informationTechnology extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("faculty of journalism,Media ",textDirection: TextDirection.ltr,),),
      body:ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const Text('Bacheor of MultiMedia'),
          const Text('Bacheor of  Mass Communication'),
          const Text('Bacheor of journalism'),


        ],
      ) ,

    );
  }

}