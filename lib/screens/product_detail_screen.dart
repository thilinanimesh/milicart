import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:milicart/providers/products_provider.dart';

class ProductDetailScreen extends StatelessWidget {
//  final String title;
//
//  ProductDetailScreen(this.title);

static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context).settings.arguments as String;

    //by listen == false we will tell listen not to update the whole widget as we are not instrested with updated data. This screen will only will be generated once.
    final loadedProduct = Provider.of<ProductsProvider>(context,listen: false).findByID(prodId: productID);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
