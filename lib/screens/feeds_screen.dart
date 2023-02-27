import 'package:flutter/material.dart';
import 'package:store_api_flutter_course/models/products_model.dart';
import 'package:store_api_flutter_course/widgets/feeds_gridview.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({
    super.key,
    required this.productsList,
  });
  final List<ProductsModel> productsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products'),
      ),
      body: productsList.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : FeedsGridView(productsList: productsList),
    );
  }
}
