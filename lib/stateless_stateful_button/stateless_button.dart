import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {
                  print('hiii');
                },
                color: Colors.red,
                //splashColor: Colors.yellow,
                height: 50,
                minWidth: 150,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Text("Material Button"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)))),
                child: Text("Material Button"),
              ),
              // FlatButton(
              //   onPressed: () {},
              //   color: Colors.green,
              //   height: 50,
              //   minWidth: 200,
              //   child: Text("Flat Button"),
              // ),
              // RaisedButton(
              //   onPressed: () {},
              //   child: Text("Raised Button"),
              // ),
              OutlinedButton(
                onPressed: () {},
                child: Text("Outlined Button"),
                style: ButtonStyle(),
              ),
              Chip(
                label: Text("hii"),
                onDeleted: () {},
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
              TextButton(onPressed: () {}, child: Text("Text Button")),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("InkWell"),
                ),
              ),
              InkResponse(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Ink Response"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('hllo');
                },
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
