import 'package:flutter/material.dart';
import 'package:ui_widgets/stateless_stateful_button/stateful_button.dart';
import 'package:ui_widgets/widgets/Bottom_Navigation_bar.dart';
import 'package:ui_widgets/widgets/Gridview_builder.dart';
import 'package:ui_widgets/widgets/Listview_builder.dart';
import 'package:ui_widgets/widgets/Text_Gradiant.dart';
import 'package:ui_widgets/widgets/appbar_drawer.dart';
import 'package:ui_widgets/widgets/date_time.dart';
import 'package:ui_widgets/widgets/light_dark_theme.dart';
import 'package:ui_widgets/widgets/model_bottom_sheet.dart';
import 'package:ui_widgets/widgets/page_view.dart';
import 'package:ui_widgets/widgets/sream_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: CounterApp(),
    );
  }
}
