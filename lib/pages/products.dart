import 'package:first_app/widgets/products/products.dart';
import 'package:flutter/material.dart';

import '../widgets/products/products.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductsPage(this.products);

  Widget _buildDrawer(BuildContext context){
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Login'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/auth');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Manage Products'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/admin');
            },
          ),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Products'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(context),
      appBar: AppBar(
        title: Text('EasyList'),
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.favorite),
//            onPressed: () {},
//          ),
//        ],
      ),
      body: Products(products),
    );
  }
}
