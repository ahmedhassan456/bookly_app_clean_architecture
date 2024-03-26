import 'package:bookly_app/features/home/presentation/views/widgets/home_details_view_widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class HomeDetailsView extends StatelessWidget {
  const HomeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(),
      ),
    );
  }
}
