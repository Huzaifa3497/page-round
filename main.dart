import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(const MyApp());

class Product {
  final String name;
  final String description;
  final int price;
  final String image;
  Product(this.name, this.description, this.price, this.image);

  static List<Product> getProducts() {
    List<Product> items = <Product>[];
    items.add(Product(
        "kashmir",
        "Kashmir is the northernmost geographical region of the Indian subcontinent. Until the mid-19th century, the term Kashmir denoted only the Kashmir Valley ...",
        8500,
        "kashmir.png"));
    items.add(Product(
        " hunza",
        "Hunza valley is a very beautiful ❤️ valley in Gilgit Baltistan (Pakistan) just like a paradise on Earth.",
        20000,
        "hunza.png"));
    items.add(Product(
        "naran",
        "Naran (Urdu: ناران ) is a town and most popular tourist destination in upper Kaghan Valley in Mansehra District of Khyber Pakhtunkhwa province of Pakistan.",
        15000,
        "naran.png"));
    items.add(Product(
        " Nagar valley",
        "Nagar valley is found that is sited close to Gilgit valley, that is additionally a well known vale of our country. it's a division of Hunza Nagar District.",
        13000,
        "pendrive.png"));

    return items;
  }
}

// ignore: camel_case_types
class img {
  final String image;
  img(this.image);
  static List<img> getimg() {
    List<img> items = <img>[];
    items.add(img('image/kashmir.jpg'));
    items.add(img('image/hunza.jpg'));
    items.add(img('image/hunza1.jpg'));
    items.add(img('image/hunza2.jpg'));
    return items;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'travelicious_husainenterprises',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'travelicious_husainenterprises'),
    );
  }
}
