import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/firebase_services.dart';
import 'model/event_model.dart';
import 'event_card.dart';

class LocalEventsScreen extends StatelessWidget {
  FirestoreDatabase firestoreDatabase = new FirestoreDatabase();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: StreamBuilder<QuerySnapshot>(
      stream: firestoreDatabase.getLocalEvents(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var newList = snapshot.data.documents.map((snapshot) {
            return Event.fromSnapshot(snapshot);
          }).toList();

          return Scrollbar(
              child: ListView.builder(
                  padding: const EdgeInsets.all(2.0),
                  itemCount: newList.length,
                  itemBuilder: (context, index) =>
                      EventCard(event: newList[index])));
        } else {
          return CircularProgressIndicator();
        }
      },
    ));
  }
}
