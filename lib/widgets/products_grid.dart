import 'package:flutter/material.dart';
import 'package:milicart/models/product.dart';
import 'package:milicart/providers/products_provider.dart';
import 'package:provider/provider.dart';
import 'package:milicart/widgets/product.item.dart';

class ProductsGrid extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductsProvider>(context);
    final products =productData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (context, i) => ProductItem(
          id: products[i].id,
          title: products[i].title,
          imageUrl: products  [i].imageUrl),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}