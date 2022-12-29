import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        height: 100,
                        width: 200,
                        color: Colors.red,
                        child: Center(child: Text(index.toString())),
                      ),
                      Text("Hii")
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
