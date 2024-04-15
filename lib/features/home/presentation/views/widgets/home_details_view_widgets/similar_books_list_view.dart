import 'package:flutter/material.dart';

import '../home_view_widgets/custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: CustomBookIamge(imageUrl: '',),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
