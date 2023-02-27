import 'package:flutter/material.dart';
import 'package:store_api_flutter_course/models/products_model.dart';
import 'package:store_api_flutter_course/widgets/feeds_widget.dart';

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
      body: GridView.builder(
        // shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: productsList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) {
          return FeedsWidget(
            imageUrl: productsList[index].images![0],
            title: productsList[index].title!,
          );
        },
      ),
    );
  }
}
