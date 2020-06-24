import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasvi/bloc/worker/bloc.dart';

class ThanksScreen extends StatelessWidget {

  final String ref;
  const ThanksScreen({Key key, this.ref}) : super(key: key);

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
        body: Container(
          margin: EdgeInsets.all(12),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  minRadius: 70,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.done, color: Colors.green, size: 80,),
                ),
                SizedBox(height: 20,),
                Text("Saved", style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 20, fontStyle: FontStyle.italic
                ),),
                SizedBox(height: 80,),
                Text('Your Document has been saved. Please note Reference Number'),
                SizedBox(height: 10,),
                Text('${ref??""}', style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10,),
                Text("for further detail."),
                SizedBox(height: 60,),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 40,
                  child: OutlineButton(
                    child: Text("GO BACK"),
                    onPressed: () {

                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
