import 'package:cloud_firestore/cloud_firestore.dart';


class WorkersRepository {

  final Firestore _db;

  WorkersRepository({Firestore db})
      : _db = db ?? Firestore.instance;

  Future<String> addNewWorker(Map<String, dynamic> p) async {
    DocumentReference ref = await _db.collection('/workers').add(p);
    return ref.documentID;
  }
}