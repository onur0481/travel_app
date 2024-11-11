import 'package:cloud_firestore/cloud_firestore.dart';

enum CollectionPaths {
  user,
  travel;

  CollectionReference<Map<String, dynamic>> get collection {
    return FirebaseFirestore.instance.collection(name);
  }
}
