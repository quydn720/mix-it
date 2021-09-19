import 'package:flutter/material.dart';

class ListwTitle extends StatelessWidget {
  final String title;
  final List<String> items;
  const ListwTitle({
    required this.items,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final item = items
        .map((item) => Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(item),
            ))
        .toList();
    // TODO: performance issue => (list builder)
    // sliver  for the header 'Ingredients' (BODY)
    item.insert(
        0,
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        ));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: item,
    );
  }
}
