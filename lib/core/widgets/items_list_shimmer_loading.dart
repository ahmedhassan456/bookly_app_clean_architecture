import 'package:bookly_app/core/widgets/item_list_shimmer_loading.dart';
import 'package:flutter/material.dart';

class ItemsListShimmerLoading extends StatelessWidget {
  const ItemsListShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: ItemListShimmerLoading(),
        );
      },
      itemCount: 10,
    );
  }
}
