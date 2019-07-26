import 'package:flutter/material.dart';
import 'model/event_model.dart';
import 'services/api_services.dart';
import 'event_card.dart';

class GlobalEventsScreen extends StatelessWidget {
  ApiResponse api = new ApiResponse();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder<List<Event>>(
      future: api.getEvents(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scrollbar(
              child: ListView.builder(
                  padding: const EdgeInsets.all(2.0),
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) =>
                      EventCard(event: snapshot.data[index])));
        } else {
          return CircularProgressIndicator();
        }
      },
    ));
  }
}
