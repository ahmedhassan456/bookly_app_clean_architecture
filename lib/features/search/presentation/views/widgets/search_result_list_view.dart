import 'package:flutter/material.dart';

import '../../../../home/domain/entities/book_entity.dart';
import '../../../../home/presentation/views/widgets/home_view_widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    Key? key,
    required this.books,
  }) : super(key: key);

  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
          ),
          child: BookListViewItem(
            book: books[index],
          ),
        );
      },
      itemCount: 10,
    );
  }
}