import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  CounterApp({Key? key}) : super(key: key);

  int counter = 0;
  StreamController<int> _streamController = StreamController();

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        // exit point of the stream
        child: StreamBuilder(
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  height: 50,
                  minWidth: 150,
                  color: Colors.teal,
                  onPressed: () {
                    _streamController.sink.add(--counter);
                  },
                  child: Icon(Icons.remove),
                ),
                Text(
                  "Counter: ${snapshot.data}",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            );
          },
          initialData: 0,
          stream: _streamController.stream,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //entry point of stream
          _streamController.sink.add(++counter);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
