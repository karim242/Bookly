 
 
import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookPriceRow extends StatelessWidget {
  const BookPriceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Text(
          '19.99  ',
          style: TextStyles.textStyle20,
        ),
        const Spacer(),
       const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
         const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.9',
          style: TextStyles.textStyle16,
        ),
         const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(200)',
            style: TextStyles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),       
               ),
        )
      ],
    );
  }
}
