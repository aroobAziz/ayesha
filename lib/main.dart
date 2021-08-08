import 'package:flutter/material.dart';
import 'package:v/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
    );
  }
}





class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, }) : super(key: key);



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

body: GestureDetector(
  onTap: (){
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => Home(),
    ));
  },
  child:   Container(

    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/A.png"),
        fit: BoxFit.cover
      )
    ),
    child: Center(
      child: Text('Click to Eat!',style: TextStyle(color: Colors.redAccent,fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
    ),
  ),
),
    );
  }
}
