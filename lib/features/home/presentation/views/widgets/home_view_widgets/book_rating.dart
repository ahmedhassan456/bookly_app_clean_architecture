import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookly_app/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: 14.0,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Styles.medium16.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
        const Opacity(
          opacity: 0.5,
          child: Text(
            '(1207)',
            style: Styles.semiBold14,
          ),
        ),
      ],
    );
  }
}
