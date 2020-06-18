import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasvi/bloc/worker/bloc.dart';

class ThanksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<WorkerBloc, WorkerState>(
      listener: (context, state) {
        if (state is SuccessAddingWorker) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Successfully Added Worker'),
                  ],
                ),
              ),
            );
        }
      },
      child: Scaffold(
        body: Center(
          child: Text("Thank You For Submiting Your Details Please keep this refrence number with you.."),
        ),
      ),
    );
  }
}
