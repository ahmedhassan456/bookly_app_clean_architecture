import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/book_entity.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.books});

  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CustomBookIamge(imageUrl:books[index].image ?? ''),
          );
        },
        itemCount: books.length,
      ),
    );
  }
}
