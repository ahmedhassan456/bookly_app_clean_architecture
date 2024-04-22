import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'custom_search_text_field.dart';
import 'search_result_list_view_bloc_consumer.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: CustomSearchTextField(),
          ),
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Results',
              style: Styles.semiBold18,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Expanded(
            child: SearchResultListViewBlocComsumer(),
          ),
        ],
      ),
    );
  }
}