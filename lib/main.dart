import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'Home_Page.dart';

void main() => runApp(
      DevicePreview(
        //enabled: !kReleaseMode,
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator App",
      theme: new ThemeData(
        primaryColor: Colors.green,
      ),
      home: new HomePage(),
    );
  }
}
