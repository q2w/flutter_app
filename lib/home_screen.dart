import 'package:flutter/material.dart';

import 'global_event_screen.dart';
import 'local_event_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController
      (
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Events'),
            bottom:
            TabBar(
              tabs: [
                Tab(text: 'Global',),
                Tab(text: 'Local',)
              ],
            ),
          ),
          body: TabBarView(children: [
            GlobalEventsScreen(),
            LocalEventsScreen()
          ]),
        )
    );
  }
}
