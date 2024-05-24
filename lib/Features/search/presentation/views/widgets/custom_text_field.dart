import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: builderBorder(),
          focusedBorder: builderBorder(),
          hintText: 'Search',
          suffixIcon: IconButton(
              onPressed: () {}, icon: const Icon(Icons.search_sharp))),
    );
  }

  OutlineInputBorder builderBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
