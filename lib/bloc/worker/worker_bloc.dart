import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:nasvi/repository/worker-repo.dart';
import './bloc.dart';

class WorkerBloc extends Bloc<WorkerEvent, WorkerState> {

  final WorkersRepository workerRepo;

  WorkerBloc(this.workerRepo);

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
      String docId = await workerRepo.addNewWorker(data);
      yield SuccessAddingWorker(docId);
    } catch(e) {
      print(e);
      yield ErrorWhileAddingWorker();
    }
  }
}
