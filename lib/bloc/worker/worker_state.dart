import 'package:meta/meta.dart';

@immutable
abstract class WorkerState {}

class InitialWorkerState extends WorkerState {}

class AddingNewWorker extends WorkerState{}

class SuccessAddingWorker extends WorkerState {
  final String referenceNo;

  SuccessAddingWorker(this.referenceNo);
}

class ErrorWhileAddingWorker extends WorkerState {}