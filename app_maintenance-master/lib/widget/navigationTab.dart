import 'package:flutter/material.dart';

import 'package:app_maintenance/main_corrective.dart';
import 'package:app_maintenance/main_info_equipment.dart';
import 'package:app_maintenance/main_preventive.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
        /*  appBar: AppBar(
            title: Text('Tabs Demo'),
          ),*/
          body: TabBarView(
            children: [
              InfoEquipment(),
              MainPreventive(),
              MainCorrective(),
            ],
          ),
          bottomNavigationBar: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.video_library)),
                Tab(icon: Icon(Icons.today)),
                Tab(icon: Icon(Icons.build)),
              ],
             unselectedLabelColor: Colors.white,
             labelColor: Colors.blue,
             indicatorSize: TabBarIndicatorSize.tab,
           ),
           backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        ),
      ),
    );
  }
}