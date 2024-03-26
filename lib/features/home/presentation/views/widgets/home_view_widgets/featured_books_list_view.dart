import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right:8.0),
            child: CustomBookIamge(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}