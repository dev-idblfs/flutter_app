import 'package:flutter/material.dart';

Container home() {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  return Container(
    padding: EdgeInsets.all(10.0),
    child: ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          title: Text(item),
        );
      },
    ),
  );
}
