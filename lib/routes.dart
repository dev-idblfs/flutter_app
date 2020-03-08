import 'package:flutter/widgets.dart';
import 'package:flutter_app/screens/main/mainBox.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => MainBox(),
  // "/course": (BuildContext context) => ExScreen2(),
  // "/": (BuildContext context) => ExScreen1(),
  // "/course": (BuildContext context) => ExScreen2(),
};
