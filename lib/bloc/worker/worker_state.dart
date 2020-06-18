import 'package:meta/meta.dart';

@immutable
abstract class WorkerState {}

class InitialWorkerState extends WorkerState {}

class AddingNewWorker extends WorkerState{}

class SuccessAddingWorker extends WorkerState {}

class ErrorWhileAddingWorker extends WorkerState {}