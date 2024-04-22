import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/items_list_shimmer_loading.dart';
import '../../../../home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'search_result_list_view.dart';
class SearchResultListViewBlocComsumer extends StatelessWidget {
  const SearchResultListViewBlocComsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBooksCubit, NewestBooksState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SearchResultListView(books: state.books);
        } else if (state is NewestBooksFailure) {
          return Text(state.message);
        }
        return const ItemsListShimmerLoading();
      },
    );
  }
}