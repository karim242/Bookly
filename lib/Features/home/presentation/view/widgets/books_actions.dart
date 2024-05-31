import 'package:bookly/Features/home/data/model/book_models/book_models.dart';
import 'package:bookly/core/utils/function/launch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key, required this.book});
final BookModels book;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            text: 'Free',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0)),
          )),
          Expanded(
              child: CustomButton(
                onPressed: () {
                 launchCustomUr(context, book.volumeInfo.previewLink);

                },
            text: 'Preview',
            textColor: Colors.white,
            backgroundColor: const Color(0xffEf8262),
            fontSize: 16.0,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0)),
          )),
        ],
      ),
    );
  }
}
