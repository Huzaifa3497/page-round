import 'package:flutter/material.dart';
import 'package:project/product.dart';
import 'package:project/productpage.dart';

import 'main.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final item = Product.getProducts();
  final items = img.getimg();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("travelicious_husainenterprises Navigation")),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: item.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ProductBox(
                item: item[index],
                items: items[index],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(
                      item: item[index],
                      items: items[index],
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}
