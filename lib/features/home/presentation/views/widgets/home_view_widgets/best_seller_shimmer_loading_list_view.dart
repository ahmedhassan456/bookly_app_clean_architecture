import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/best_seller_shimmer_loading.dart';
import 'package:flutter/material.dart';

class BestSellerShimmerLoadingListView extends StatelessWidget {
  const BestSellerShimmerLoadingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BestSellerShimmerLoading(),
        );
      },
      itemCount: 10,
    );
  }
}