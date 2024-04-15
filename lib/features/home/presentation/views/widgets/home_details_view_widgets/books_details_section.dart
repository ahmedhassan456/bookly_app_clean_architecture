import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../home_view_widgets/book_rating.dart';
import '../home_view_widgets/custom_book_image.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: const CustomBookIamge(imageUrl: '',),
        ),
        const SizedBox(
          height: 43.0,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.regular30,
        ),
        const SizedBox(
          height: 6.0,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.medium18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18.0,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37.0,
        ),
        const BooksAction(),
      ],
    );
  }
}
