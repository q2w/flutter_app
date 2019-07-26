import 'package:flutter/material.dart';

import 'model/event_model.dart';

class EventCard extends StatelessWidget {
  final Event event;

  EventCard({@required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(

//      child: Text(event.eventName,),
      color: Colors.greenAccent,
      child: Padding(
//        fit: BoxFit.contain,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(event.eventName),
            Text(event.city, style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.red
            ))
          ],
        ),
      ),
    );
  }
}