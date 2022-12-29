import 'package:flutter/material.dart';

class ModelBottomSheet extends StatefulWidget {
  const ModelBottomSheet({Key? key}) : super(key: key);

  @override
  State<ModelBottomSheet> createState() => _ModelBottomSheetState();
}

class _ModelBottomSheetState extends State<ModelBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: MaterialButton(
            height: 50,
            minWidth: 150,
            color: Colors.red,
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) {
                  return Container(
                    height: 800,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close))
                      ],
                    ),
                  );
                },
              );
            },
          ),
        )
      ]),
    );
  }
}
