import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'bedroom.dart';
//import 'package:flutter_app/assets/MyFlutterApp.dart';
class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String _timeString;
  Color color1=Colors.white70;
  Color color2=Colors.white70;
  Color color3=Colors.white70;
  Color color4=Colors.white70;
  Color color5=Colors.white70;
  Color color6=Colors.white70;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  }
  void _getTime() {
    final String formattedDateTime =
    DateFormat('kk:mm').format(DateTime.now()).toString();
    setState(() {
      _timeString = formattedDateTime;
     // print(_timeString);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0a4da2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Container(
            padding: EdgeInsets.only(top:20.0, left: 30.0,right: 20.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                 // mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text( _timeString.toString(),
                    style: TextStyle(color: Colors.white,fontSize: 15,
                      fontWeight: FontWeight.bold,),
                    ),
                    SizedBox(width: 240.0,),
                    Icon(Icons.network_cell,color: Colors.white,size: 15.0,),
                    Icon(Icons.network_wifi,color: Colors.white,size: 15.0,),
                    Icon(Icons.battery_full,color: Colors.white,size: 15.0,),
                  ],
                ),



                SizedBox(height: 45.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Control', style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.w700
                        ),),
                        Text('Panel', style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                    CircleAvatar(backgroundImage: AssetImage('assets/images/user.jpg'),radius: 40.0,),
                  ],
                ),



              ],
            ),
          ),
          Expanded(
            child: Container(
               padding: EdgeInsets.only(top:20.0,left: 30.0,right: 20.0),
              decoration: BoxDecoration(color: Color(0xFFf6f8ff),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0),topRight: Radius.circular(35.0))
              ),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: <Widget>[
                  Row(children: <Widget>[
                    Text('All Rooms',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,color: Color(0xFF002d67)),)
                  ],),
                  SizedBox(height: 20.0,),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Bedroom()),
                                );
                                color1=Color(0xFF00011);
                              });
                            },
                            child: Container(
                              height: 150.0,
                              decoration: BoxDecoration(color: color1,borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(15.0),
                                      child: SvgPicture.asset('assets/images/bed.svg')),
                                  SizedBox(height: 10.0,),
                                  Text('  Bedroom',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 3.0,),
                                  Text('    4 Lights',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),


                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                //  print("hello adarsh");
                                color2=Color(0xFF00011);
                              });
                            },
                            child: Container(
                              height: 150.0,
                              decoration: BoxDecoration(color: color2,borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(15.0),
                                      child: SvgPicture.asset('assets/images/room.svg')),
                                  SizedBox(height: 10.0,),
                                  Text('  Living Room',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 3.0,),
                                  Text('    2 Lights',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),


                                ],
                              ),
                            ),
                          ),
                        )
                      ],),
                  ),
                  SizedBox(height: 10.0,),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                //  print("hello adarsh");
                                color3=Color(0xFF00011);
                              });
                            },
                            child: Container(
                              height: 150.0,
                              decoration: BoxDecoration(color: color3,borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(15.0),
                                      child: SvgPicture.asset('assets/images/kitchen.svg')),
                                  SizedBox(height: 10.0,),
                                  Text('  Kitchen',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 3.0,),
                                  Text('    5 Lights',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),


                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                //  print("hello adarsh");
                                color4=Color(0xFF00011);
                              });
                            },
                            child: Container(
                              height: 150.0,
                              decoration: BoxDecoration(color: color4,borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(15.0),
                                      child: SvgPicture.asset('assets/images/bathtube.svg')),
                                  SizedBox(height: 10.0,),
                                  Text('  Bathroom',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 3.0,),
                                  Text('    1 Lights',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),


                                ],
                              ),
                            ),
                          ),
                        )
                      ],),
                  ),
                  SizedBox(height: 10.0,),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {

                                color5=Color(0xFF00011);
                              });
                            },
                            child: Container(
                              height: 150.0,
                              decoration: BoxDecoration(color: color5,borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(15.0),
                                      child: SvgPicture.asset('assets/images/house.svg')),
                                  SizedBox(height: 10.0,),
                                  Text('  Outdoor',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 3.0,),
                                  Text('    5 Lights',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),


                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                              //  print("hello adarsh");
                                color6=Color(0xFF00011);
                              });
                            },
                            child: Container(
                             height: 150.0,
                              decoration: BoxDecoration(color: color6,borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(15.0),
                                      child: SvgPicture.asset('assets/images/balcony.svg')),
                                  SizedBox(height: 10.0,),
                                  Text('  Balcony',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 3.0,),
                                  Text('    2 Lights',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),


                                ],
                              ),
                            ),
                          ),
                        )
                      ],),
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.lightbulb,size: 35.0,color: Colors.lightBlueAccent,),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home,size: 35.0,color: Colors.lightBlueAccent,),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,size: 35.0,color: Colors.lightBlueAccent,),
              title: Text('')
          )
        ],),
    );
  }
}

