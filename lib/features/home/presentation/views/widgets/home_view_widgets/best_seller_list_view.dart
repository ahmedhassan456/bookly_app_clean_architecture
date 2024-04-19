import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/book_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/book_entity.dart';

class BestSellerListView extends StatefulWidget {
  const BestSellerListView({
    Key? key,
    required this.bestSellerBooks,
  }) : super(key: key);

  final List<BookEntity> bestSellerBooks;

  @override
  State<BestSellerListView> createState() => _BestSellerListViewState();
}

class _BestSellerListViewState extends State<BestSellerListView> {
  late final ScrollController scrollController;
  int nextPage = 1;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(scrollListener);
  }

  void scrollListener() async{
    var position = scrollController.position.pixels;
    var maxScroll = scrollController.position.maxScrollExtent;
    if (position >= 0.5 * maxScroll) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks(
          pageNumber: nextPage++,
        );
        isLoading = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: BookListViewItem(
            book: widget.bestSellerBooks[index],
          ),
        );
      },
      itemCount: 10,
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
