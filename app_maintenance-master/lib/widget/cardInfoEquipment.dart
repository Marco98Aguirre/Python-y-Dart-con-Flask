 import 'package:flutter/material.dart';  
 
 final planetCard = new Container(
     height: 124.0,
     margin: new EdgeInsets.only(left: 46.0),
     decoration: new BoxDecoration(
       color: new  Color.fromRGBO(255, 255, 255, 0.9),
       shape: BoxShape.rectangle,
       borderRadius: new BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        new BoxShadow(  
          color: Colors.black12,
          blurRadius: 10.0,
          offset: new Offset(0.0, 10.0),
        ),
      ],
    ),
  );

  final planetThumbnail = new Container(
     margin: new EdgeInsets.symmetric(
       vertical: 16.0
     ),
     alignment: FractionalOffset.centerLeft,
     child: new Image(
       image: new AssetImage('safety.png'),
       height: 92.0,
       width: 92.0,
    ),
  );

  final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(100.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text('EQUIPO 1',
            style: headerTextStyle,
          ),
          new Container(height: 10.0),
          new Text('ID:12054535',
            style: subHeaderTextStyle

          ),
          new Container(
            margin: new EdgeInsets.symmetric(vertical: 8.0),
            height: 2.0,
            width: 18.0,
            color: new Color(0xff00c6ff)
          ),
          new Row(
            children: <Widget>[
             // new Image.asset("assets/img/ic_distance.png", height: 12.0),
              new Container(width: 8.0),
              new Text('MARCA MILLER',
               style: regularTextStyle,
              ),
              new Container(width: 24.0),
             // new Image.asset("assets/img/ic_gravity.png", height: 12.0),
              new Container(width: 8.0),
              new Text('2009',
                //style: regularTextStyle,
              ),
            ],
          ),
        ],
      ),
    );

final baseTextStyle = const TextStyle(
      fontFamily: 'Poppins'
    );

final headerTextStyle = baseTextStyle.copyWith(
      color:  Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w600
    );

final regularTextStyle = baseTextStyle.copyWith(
      color: Colors.black,
      fontSize: 10.0,
      fontWeight: FontWeight.w400
    );

final subHeaderTextStyle = regularTextStyle.copyWith(
      fontSize: 12.0
    );