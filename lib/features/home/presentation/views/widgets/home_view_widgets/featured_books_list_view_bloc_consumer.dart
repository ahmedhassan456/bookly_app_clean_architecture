import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../manager/featured_books_cubit/featured_books_cubit.dart';

class FeaturedBooksListViewBlocConsumer extends StatelessWidget {
  const FeaturedBooksListViewBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is FeaturedBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        }else if (state is FeaturedBooksFailure) {
          return Text(state.message);
        }
        return const FeaturedBooksListView();
      },
    );
  }
}