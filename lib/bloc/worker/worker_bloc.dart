import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import './bloc.dart';

class WorkerBloc extends Bloc<WorkerEvent, WorkerState> {
  @override
  WorkerState get initialState => InitialWorkerState();

  @override
  Stream<WorkerState> mapEventToState(
    WorkerEvent event,
  ) async* {
    if (event is AddNewWorker) {
      yield* _mapToAddNewWorker(event.data);
    }
  }

  Stream<WorkerState> _mapToAddNewWorker(Map<String, dynamic> data) async* {
    yield AddingNewWorker();
    try {
      await Future.delayed(Duration(seconds: 2));
//      throw Exception();
      yield SuccessAddingWorker();
    } catch(e) {
      print(e);
      yield ErrorWhileAddingWorker();
    }
  }
}
