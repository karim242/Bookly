import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

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
                onPressed: () async{
                  final Uri  url = Uri.parse('https://flutter.dev');
                  if (await canLaunchUrl(url) ) {
                    await launchUrl(url);
                  }

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
