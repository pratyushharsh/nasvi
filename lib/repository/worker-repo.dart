import 'package:cloud_firestore/cloud_firestore.dart';


class WorkersRepository {

  final Firestore _db;

  WorkersRepository({Firestore db})
      : _db = db ?? Firestore.instance;

  Future<void> addNewWorker(Map<String, dynamic> p) async {
    await Future.delayed(Duration(seconds: 2));
//    return _db.collection('/workers').add(p);
  }
}