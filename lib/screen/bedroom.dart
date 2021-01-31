import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:fast_color_picker/fast_color_picker.dart';
import 'package:flutter_app/components/lamp_hanger.dart';
class Bedroom extends StatefulWidget {
  @override
  _BedroomState createState() => _BedroomState();
}

class _BedroomState extends State<Bedroom> {
  String _timeString;
  double _value=0.3;
  Color _color=Colors.grey;

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
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(home: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: Color(0xFF0a4da2),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.power_settings_new,color: Colors.redAccent,),
        backgroundColor: Colors.white,
        onPressed: () {
          setState(() {
                _color=Colors.grey;
          });
        },
      ),
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
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Bed', style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.w700
                        ),),
                        Text('Room', style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.w700
                        ),),
                        SizedBox(height: 3.0,),
                        Text('4 Lights', style: TextStyle(color: Color(0xFFffd239),fontSize: 20.0,
                        ),),
                      ],
                    ),
                    SizedBox(width: 60.0,),
                    ColorFiltered(

                         colorFilter: ColorFilter.mode(_color.withOpacity(_value), BlendMode.modulate),
                        child: SvgPicture.asset('assets/images/light bulb.svg',)),
                  ],
                ),
                //SizedBox(height: 20.0,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(

                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.all(Radius.circular(10.0)),

                        ),
                        child:  Center(
                          child: Row(
                            children: [
                              Icon(Icons.highlight),

                              Text(" Main Light  ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Color(0xFF002d67)),),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Container(

                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF002d67),
                          borderRadius:BorderRadius.all(Radius.circular(10.0)),

                        ),
                        child:  Center(
                          child: Row(
                            children: [
                              Icon(Icons.queue_play_next_sharp,color: Colors.white,),

                              Text("   Desk Light    ",style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold, color:Colors.white),),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Container(

                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.all(Radius.circular(10.0)),

                        ),
                        child:  Center(
                          child: Row(
                            children: [
                              Icon(Icons.king_bed_outlined),

                              Text(" Bed Light  ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Color(0xFF002d67)),),

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),





              ],
            ),
          ),

          Expanded(child: Container(
            height: 150.0,
            padding: EdgeInsets.only(top:20.0,left: 30.0,right: 20.0),
            decoration: BoxDecoration(color: Color(0xFFf6f8ff),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0),topRight: Radius.circular(35.0))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                  Row(
                    children: <Widget>[
                      Text('Intensity',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,color: Color(0xFF002d67)) ,),

                    ],
                  ),
                SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    Icon(Icons.lightbulb_outline, size: 30.0,color: Colors.grey,),
                    Expanded(
                      child: Slider(
                        min: 0,
                        max: 1,
                        divisions: 5,
                        value: _value,
                        activeColor: Color(0xFFfcd244),
                        inactiveColor: Colors.grey,

                        onChanged: (double value){
                          setState(() {
                            _value=value;
                          });

                        },
                      ),
                    ),
                    Icon(Icons.lightbulb, size: 30.0,color: Color(0xFFfcd244),),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  children: <Widget>[
                    Text('Colors',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,color: Color(0xFF002d67)) ,),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: FastColorPicker(
                    selectedColor: _color,
                    onColorSelected: (color) {
                      setState(() {
                        _color = color;
                      });
                    },
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    Text('Scenes',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,color: Color(0xFF002d67)) ,),
                  ],
                ),
                SizedBox(height: 25.0,),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFffa797),
                        borderRadius:BorderRadius.all(Radius.circular(20.0)),

                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.lightbulb_outline),

                            Text(" Birthday ",style: TextStyle(fontSize: 25.0),),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0,),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFb893eb),
                        borderRadius:BorderRadius.all(Radius.circular(20.0)),

                      ),
                      child:  Center(
                        child: Row(
                          children: [
                            Icon(Icons.lightbulb_outline_rounded),

                            Text("  Party  ",style: TextStyle(fontSize: 25.0),),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF93cdeb),
                        borderRadius:BorderRadius.all(Radius.circular(20.0)),

                      ),
                       child:  Center(
                      child: Row(
                    children: [
                    Icon(Icons.lightbulb_outline_rounded),

                    Text("   Relax    ",style: TextStyle(fontSize: 25.0),),

                  ],
                ),
          ),
                    ),
                    SizedBox(width: 15.0,),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF9ce293),
                        borderRadius:BorderRadius.all(Radius.circular(20.0)),

                      ),
                      child:  Center(
                        child: Row(
                          children: [
                            Icon(Icons.lightbulb_outline_rounded),

                            Text("   Fun    ",style: TextStyle(fontSize: 25.0),),

                          ],
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),),

        ],
      ),
       bottomNavigationBar: BottomNavigationBar(currentIndex: 0,
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
         ),
       ],),

    ),
    );
  }
}
