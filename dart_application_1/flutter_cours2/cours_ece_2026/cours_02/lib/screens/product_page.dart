import 'package:flutter/material.dart';
import 'package:formation_flutter/model/product_view_model.dart';
import 'package:formation_flutter/widgets/product_header.dart';
import 'package:formation_flutter/widgets/summary_banner.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductViewModel(),
      child: Scaffold(
        body: Consumer<ProductViewModel>(
          builder: (context, viewModel, child) {
            if (viewModel.product == null) {
              return const Center(child: CircularProgressIndicator());
            }

            return const _ProductDetails();
          },
        ),
      ),
    );
  }
}

class _ProductDetails extends StatelessWidget {
  const _ProductDetails();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [ProductHeader(), SummaryBanner()]),
    );
  }
}
