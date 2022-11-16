import 'package:flutter/material.dart';

import 'main.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key, required this.item, required this.items})
      : super(key: key);
  final Product item;
  final img items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  items.image,
                  width: double.infinity,
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
        ),
      ),
    );
  }
}
