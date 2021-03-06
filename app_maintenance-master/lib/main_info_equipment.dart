import 'package:flutter/material.dart';


import 'package:app_maintenance/widget/cardInfoEquipment.dart';

class InfoEquipment extends StatefulWidget {
  @override
  _InfoEquipmentState createState() => _InfoEquipmentState();
}

class _InfoEquipmentState extends State<InfoEquipment> {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text('EQUIPOS'),
      ),
      body: Container(
       height: 120.0,
       margin: const EdgeInsets.symmetric(
         vertical: 16.0,
         horizontal: 24.0,
       ),
        child: Stack(
            children: <Widget>[
                planetCard,
                planetThumbnail,
                planetCardContent
              ],
        ),
      ),
    ); 
  }
}