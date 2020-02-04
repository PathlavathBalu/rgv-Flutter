import 'package:myapp/celebrityapp/facebook.dart';
import 'package:myapp/celebrityapp/instagram.dart';
import "package:myapp/celebrityapp/images.dart";
import "package:myapp/celebrityapp/page_3.dart";
import 'package:flutter/material.dart';
import 'package:myapp/celebrityapp/twitter.dart';

import 'moviedetail.dart';
import 'page_2_1.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage2 extends StatefulWidget {
 

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage2> {
 
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     
       body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(

            vertical:16.0,horizontal: 16.0
        ),
        child: Builder(
            builder:(context)=>Form(
              key:_formKey,

              child:new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    elevation: 8.0,
                    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.grey[300],

                child: new InkWell(


                  child: Container(
                    decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9),borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      leading: Container(
                        padding: EdgeInsets.only(right: 12.0),
                        decoration: new BoxDecoration(
                            border: new Border(
                                right: new BorderSide(width: 1.0, color: Colors.white24))),
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      title: Text(
                        "Biography",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                             onTap: ()async {
                               final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => Biography()));
                              
                             },


                )


                  ),
                  SizedBox(height:10),
                 
                  Card(
                    color: Colors.grey[300],

                    elevation: 8.0,
                    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

                      child: new InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9),borderRadius:BorderRadius.circular(10)),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                              padding: EdgeInsets.only(right: 12.0),
                              decoration: new BoxDecoration(
                                  border: new Border(
                                      right: new BorderSide(width: 1.0, color: Colors.white24))),
                              child: Icon(Icons.movie, color: Colors.white),
                            ),
                            title: Text(
                              "Movies",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        onTap: ()async {
                          final resultofAnteena = await Navigator.push(context, MaterialPageRoute(builder: (context) => Movies()));
                          },                     


                      )



                  ),
                  SizedBox(height:10),
                  Card(
                    color:Colors.grey[400],
                    elevation: 8.0,
                    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

                      child: new InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9) ,borderRadius:BorderRadius.circular(10)),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                              padding: EdgeInsets.only(right: 12.0),
                              decoration: new BoxDecoration(
                                  border: new Border(
                                      right: new BorderSide(width: 1.0, color: Colors.white24))),
                              child: Icon(Icons.image, color: Colors.white),
                            ),
                            title: Text(
                              "Images",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),

                        ),
                        onTap:
                        ()async {
                          final resultofAnteena = await Navigator.push(context, MaterialPageRoute(builder: (context) => Images()));

                        },
                      )
                  ),
                  SizedBox(height:20),  

                  Card(
                    color:Colors.grey[400],
                    elevation: 8.0,
                    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

                      child: new InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9) ,borderRadius:BorderRadius.circular(10)),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                              padding: EdgeInsets.only(right: 12.0),
                              decoration: new BoxDecoration(
                                  border: new Border(
                                      right: new BorderSide(width: 1.0, color: Colors.white24))),
                              child: Icon(Icons.videocam, color: Colors.white),
                            ),
                            title: Text(
                              "Videos",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),

                        ),
                        onTap:
                        ()async {
                          final resultofAnteena = await Navigator.push(context, MaterialPageRoute(builder: (context) => Videos()));

                        },
                      )
                  ),
                  SizedBox(height:20),  

                  Card(
                    color:Colors.grey[400],
                    elevation: 8.0,
                    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

                      child: new InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9) ,borderRadius:BorderRadius.circular(10)),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                              padding: EdgeInsets.only(right: 12.0),
                              decoration: new BoxDecoration(
                                  border: new Border(
                                      right: new BorderSide(width: 1.0, color: Colors.white24))),
                              child: Icon(IconData(0xe900, fontFamily: 'Twitter'), color: Colors.white),
                            ),
                            title: Text(
                              "Twitter",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),

                        ),
                        onTap:
                        ()async {
                          final resultofAnteena = await Navigator.push(context, MaterialPageRoute(builder: (context) => Twitter()));

                        },
                      )
                  ),
                  SizedBox(height:20), 

                  Card(
                    color:Colors.grey[400],
                    elevation: 8.0,
                    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

                      child: new InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9) ,borderRadius:BorderRadius.circular(10)),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                              padding: EdgeInsets.only(right: 12.0),
                              decoration: new BoxDecoration(
                                  border: new Border(
                                      right: new BorderSide(width: 1.0, color: Colors.white24))),
                              child: Icon(IconData(0xe900, fontFamily: 'Instagram'), color: Colors.white),
                            ),
                            title: Text(
                              "Instagram",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),

                        ),
                        onTap:
                        ()async {
                          final resultofAnteena = await Navigator.push(context, MaterialPageRoute(builder: (context) => Instagram()));

                        },
                      )
                  ),
                  SizedBox(height:20), 

                  Card(
                    color:Colors.grey[400],
                    elevation: 8.0,
                    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

                      child: new InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9) ,borderRadius:BorderRadius.circular(10)),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                              padding: EdgeInsets.only(right: 12.0),
                              decoration: new BoxDecoration(
                                  border: new Border(
                                      right: new BorderSide(width: 1.0, color: Colors.white24))),
                              child: Icon(IconData(0xe900, fontFamily: 'Instagram'), color: Colors.white),
                            ),
                            title: Text(
                              "Facebook",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),

                        ),
                        onTap:
                        ()async {
                          final resultofAnteena = await Navigator.push(context, MaterialPageRoute(builder: (context) => Facebook()));

                        },
                      )
                  ),
                  SizedBox(height:20),       

                ],
              ),


            )
        ),

      ),

    );
  }
}



