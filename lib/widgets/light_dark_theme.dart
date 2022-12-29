import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LightDarkScreen extends StatelessWidget {
  final darkTheme = ThemeData.dark();
  final lightTheme = ThemeData.light();
  LightDarkScreen({Key? key}) : super(key: key);

  var isMale = false.obs;

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        // exit point of the stream
        child: Obx(() => Switch(
            value: isMale.value,
            onChanged: (value) {
              value ? Get.changeTheme(darkTheme) : Get.changeTheme(lightTheme);
              print(isMale);
              print(isMale.value);
              isMale.value = value;
            })),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.dialog(
              Center(
                child: SizedBox(
                  height: 200,
                  width: 300,
                  child: Material(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Title Message"),
                        Text("Details Message......!")
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          child: Icon(Icons.add)),
    );
  }
}
