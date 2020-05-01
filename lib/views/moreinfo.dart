
import 'package:flutter/material.dart';
import 'package:gsreadingapp/main.dart';

class moreinfo extends StatefulWidget {

  @override
  _moreinfoState createState() => _moreinfoState();
}

class _moreinfoState extends State<moreinfo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text("More Information"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            color: Colors.blueGrey[700],
            elevation: 3.0,
            
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset("assets/mermaid_large.png",width: 170,),
                      SizedBox(height: 10,),
                      Text("Litte Mermaid",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Author:",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                          Text(" Abhishek",style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: <Widget>[
                          Text("Year:",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                          Text(" 2009",style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      SizedBox(height: 20,),
                      Row(
                        children: <Widget>[
                          Text("Publisher:",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                          Text(" Hmedia",style: TextStyle(color: Colors.white)),
                        ],
                      ),



                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    );

  }
}

