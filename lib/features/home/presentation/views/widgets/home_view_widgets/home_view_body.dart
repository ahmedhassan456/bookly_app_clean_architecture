import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view_bloc_consumer.dart';
import 'featured_books_list_view_bloc_consumer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListViewBlocConsumer(),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Best Seller',
                  style: Styles.semiBold18,
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListViewBlocConsumer(),
        ),
      ],
    );
  }
}
