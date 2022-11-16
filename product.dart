import 'package:flutter/material.dart';

import 'main.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({Key? key, required this.item, required this.items})
      : super(key: key);
  final Product item;
  final img items;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              items.image,
              width: 150,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(item.name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(item.description),
                Text("Price: ${item.price}"),
              ],
            ))
          ]),
    );
  }
}
