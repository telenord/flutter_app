import 'package:flutter/material.dart';

import './product_card.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products);

  Widget _buildProductsList() {
    Widget productsCard;
    if (products.length > 0) {
      productsCard = ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            ProductCard(products[index], index),
        itemCount: products.length,
      );
    } else {
      productsCard = Container();
    }
    return productsCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductsList();
  }
}
