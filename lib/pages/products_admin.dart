import 'package:flutter/material.dart';

import './product_create.dart';
import './product_list.dart';

class AdminProductPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  AdminProductPage(this.addProduct, this.deleteProduct);

  Widget _buildDrawer(BuildContext context){
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Choose'),
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: _buildDrawer(context),
        appBar: AppBar(
          title: Text('AppBar'),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.create),
              text: 'Create product',
            ),
            Tab(
              icon: Icon(Icons.list),
              text: 'My products',
            )
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(addProduct, deleteProduct),
            ProductListPage()
          ],
        ),
      ),
    );
  }
}
