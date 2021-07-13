import 'package:flutter/material.dart';

import '../../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          prefixIcon: Icon(
            Icons.search_outlined,
            color: Colors.black,
          ),
          hintText: 'Find for Nutrisi'),
    );
  }
}
