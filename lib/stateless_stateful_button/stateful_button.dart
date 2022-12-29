import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulButtons extends StatefulWidget {
  const StatefulButtons({Key? key}) : super(key: key);

  @override
  State<StatefulButtons> createState() => _StatefulButtonsState();
}

class _StatefulButtonsState extends State<StatefulButtons> {
  double sliderValue = 100;
  bool isSwitched = false;
  bool isSwitched1 = false;
  bool isChecked = false;

  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderTheme(
            data: SliderThemeData(
                activeTrackColor: Colors.green,
                inactiveTrackColor: Colors.grey,
                thumbColor: Colors.white,
                //overlayColor: Colors.orange,
                trackHeight: 3),
            child: Slider.adaptive(
              value: sliderValue,
              min: 0,
              max: 100,
              label: sliderValue.toStringAsFixed(0),
              divisions: 100,
              onChanged: (double value) {
                setState(
                  () {
                    sliderValue = value;
                  },
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Switch.adaptive(
            value: isSwitched,
            activeColor: Colors.green,
            inactiveThumbColor: Colors.white,
            onChanged: (bool value) {
              setState(
                () {
                  isSwitched = value;
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Checkbox(
            value: isChecked,
            activeColor: Colors.green,
            onChanged: (bool? value) {
              setState(
                () {
                  isChecked = value!;
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Male"),
                    Radio(
                      value: 1,
                      groupValue: groupValue,
                      onChanged: (int? value) {
                        setState(
                          () {
                            groupValue = value!;
                          },
                        );
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text("Female"),
                    Radio(
                      value: 2,
                      groupValue: groupValue,
                      onChanged: (int? value) {
                        setState(
                          () {
                            groupValue = value!;
                          },
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
          CupertinoSwitch(
            value: isSwitched1,
            onChanged: (bool value) {
              setState(
                () {
                  isSwitched1 = value;
                },
              );
            },
          )
        ],
      ),
    );
  }
}
