import 'package:flutter/material.dart';
import 'package:milicart/widgets/products_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
//  final List<Product> loadedProducts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('milicart'),
      ),
      body: ProductsGrid(),
    );
  }
}

