import 'package:flutter/material.dart';

import './price_tag.dart';
import './product_address.dart';
import '../ui_elements/title_default.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  final int productIndex;

  ProductCard(this.product, this.productIndex);

  Widget _buildContainerPrice() {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: TitleDefault(product['title']),
        ),
        SizedBox(
          width: 8.0,
        ),
        PriceTag(product['price'].toString()),
      ]),
    );
  }

  Widget _buildActionBar(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.info),
          color: Theme.of(context).accentColor,

        ),
        IconButton(
          icon: Icon(Icons.favorite_border),
          color: Colors.red,

        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        Image.asset(
          product['image'],
          fit: BoxFit.cover,
        ),
        _buildContainerPrice(),
        ProductAddress('Made in China'),
        _buildActionBar(context)
      ],
    ));
  }
}
