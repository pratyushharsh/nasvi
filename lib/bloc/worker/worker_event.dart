import 'package:meta/meta.dart';

@immutable
abstract class WorkerEvent {}

class AddNewWorker extends WorkerEvent {
  final Map<String, dynamic> data;
  AddNewWorker(this.data);
}