import 'package:bookly/Features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child:  Column(
      //  mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16,),
            Text('Search Result',style: TextStyles.textStyle18,),
                SizedBox(height: 10),
          Expanded(child: ResultSearchListView())
        ],
      ),
    );
  }
}