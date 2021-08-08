import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Food App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
        ),
        child: SingleChildScrollView(

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding:  EdgeInsets.only(top:90,),
                child: Icon(Icons.person,size: 100,color: Colors.brown,),),
              SizedBox(height: 20),
              Padding(

                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(

                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.password),

                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:25),
                child: SizedBox(
                  width: 120,

                  child: InkWell(
                    child: TextButton(
                     onPressed: (){},

                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.grey,

                        // shape:
                        // RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(20),
                        // ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height:15,
              ),
              Text("Log in With", textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,


              ),),
              SizedBox(
                height: 15,
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/facebook.png',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset('assets/google.png',
                    width: 20,
                    height: 20,),


                ],
              ),



            ],
          ),

        ),

      ),
    );
  }
}
