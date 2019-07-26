import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/model/event_model.dart';


class FirestoreDatabase {
  Stream<QuerySnapshot> getLocalEvents() {
    return Firestore.instance.collection('localEvents').snapshots();
  }
}