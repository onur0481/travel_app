import 'package:travel_app/app/models/base_firebase_model.dart';

import '../utilities/enums/collection_paths.dart';

abstract class IFirebaseService {
  Future<List<T>> getList<T extends BaseFirebaseModel<T>>(
    CollectionPaths collectionPath,
    T model,
  );

  Future<void> add<T extends BaseFirebaseModel<T>>(
    CollectionPaths collectionPath,
    T model,
  );

  Future<void> delete(
    CollectionPaths collectionPath,
    String documentId,
  );

  Future<void> update<T extends BaseFirebaseModel<T>>(
    CollectionPaths collectionPath,
    T model,
  );
}
