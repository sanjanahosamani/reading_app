import 'package:flutter/material.dart';
import 'package:gsreadingapp/views/next.dart';
import 'package:gsreadingapp/views/moreinfo.dart';
import 'package:gsreadingapp/resources/widgets.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyHomePage(),
));


class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Image.asset("assets/mermaid_large.png", width: MediaQuery
                  .of(context)
                  .size
                  .width, fit: BoxFit.fitWidth,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("The Little Mermaid", style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 21
                        ),),

                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            StarRating(rating:5),
                            SizedBox(height: 6,),
                            Text("Fairy Tales", style: TextStyle(
                                color: Colors.green,
                                fontSize: 14
                            ),)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    Text("By Sanjana Hosamani", style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 25),

                    Text("“The Little Mermaid” is a fairy tale written by the Danish author Hans Christian Andersen. "
                        "The story follows the journey of a young mermaid who is willing to give up her life in the sea as a mermaid to gain a human soul. "
                        "The tale was first published in 1837 as part of a collection of fairy tales for children.",
                      style: TextStyle(color: Colors.blueGrey,
                        fontSize: 18,
                        letterSpacing: 0.6,
                        wordSpacing: 0.6,
                      ),
                    ),
                    SizedBox(height: 80,),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: Material(
                            type: MaterialType.button,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                            ),
                            color: Colors.indigoAccent,
                            elevation: 10,
                            child: MaterialButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(
                                builder: (context)=> next(),
                              ),
                              ),
                              child: Text("Read More", style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        //button 2
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: Material(
                            type: MaterialType.button,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.blueGrey.shade200,
                            elevation: 10,
                            child: MaterialButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => moreinfo(),
                                ),
                              ),
                              child: Text('More info', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )


    );
  }
}

