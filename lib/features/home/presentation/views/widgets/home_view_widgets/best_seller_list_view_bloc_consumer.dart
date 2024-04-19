import 'package:bookly_app/core/utils/functions/build_error_snak_bar.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/best_seller_shimmer_loading_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/book_entity.dart';
import 'best_seller_list_view.dart';

class BestSellerListViewBlocConsumer extends StatefulWidget {
  const BestSellerListViewBlocConsumer({
    super.key,
  });

  @override
  State<BestSellerListViewBlocConsumer> createState() =>
      _BestSellerListViewBlocConsumerState();
}

class _BestSellerListViewBlocConsumerState
    extends State<BestSellerListViewBlocConsumer> {
  List<BookEntity> bestSellerBooks = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBooksCubit, NewestBooksState>(
      listener: (context, state) {
        if (state is NewestBooksSuccess) {
          bestSellerBooks.addAll(state.books);
        }

        if (state is NewestBooksPaginationFailure) {
          showErrorSnackbar(context, state.message);
        }
      },
      builder: (context, state) {
        if (state is NewestBooksSuccess ||
            state is NewestBooksPaginationLoading ||
            state is NewestBooksPaginationFailure) {
          return BestSellerListView(bestSellerBooks: bestSellerBooks);
        }else if (state is NewestBooksFailure)
        {
          return Text(state.message);
        }else
        {
          return const BestSellerShimmerLoadingListView();
        }
      },
    );
  }
}
