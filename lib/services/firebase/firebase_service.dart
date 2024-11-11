import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:travel_app/app/interfaces/i_firebase_service.dart';
import 'package:travel_app/app/models/base_firebase_model.dart';
import 'package:travel_app/app/utilities/enums/collection_paths.dart';
import 'package:travel_app/app/utilities/enums/request_keys.dart';

@immutable
class FirebaseService extends IFirebaseService {
  FirebaseService();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Future<void> add<T extends BaseFirebaseModel<T>>(CollectionPaths collectionPath, T model) async {
    final currentUserId = _auth.currentUser?.uid;
    if (currentUserId == null) throw "aa";

    await collectionPath.collection.add({
      ...model.toFirestore(),
      RequestKeys.uid.reference: currentUserId,
    });
  }

  @override
  Future<void> delete(CollectionPaths collectionPath, String documentId) async {
    final currentUserId = _auth.currentUser?.uid;
    if (currentUserId == null) throw "bb";

    final documentRef = collectionPath.collection.doc(documentId);

    final docSnapshot = await documentRef.get();
    if (!docSnapshot.exists) throw "cc";

    await documentRef.delete();
  }

  @override
  Future<List<T>> getList<T extends BaseFirebaseModel<T>>(CollectionPaths collectionPath, T model) async {
    final currentUserId = _auth.currentUser?.uid;
    if (currentUserId == null) throw "dd";

    final QuerySnapshot snapshot = await collectionPath.collection
        .where(
          RequestKeys.uid.reference,
          isEqualTo: currentUserId,
        )
        .get();

    return snapshot.docs
        .map((doc) {
          return model.fromFirestore(
            doc.data()! as Map<String, dynamic>,
            doc.id,
          );
        })
        .cast<T>()
        .toList();
  }

  @override
  Future<void> update<T extends BaseFirebaseModel<T>>(CollectionPaths collectionPath, T model) async {}
}
