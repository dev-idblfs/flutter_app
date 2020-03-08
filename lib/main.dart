import 'package:flutter/material.dart';
import 'package:flutter_app/theme/style.dart';
import 'routes.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Samplsse App',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: routes,
      debugShowCheckedModeBanner: false,
      
    );
  }
}
