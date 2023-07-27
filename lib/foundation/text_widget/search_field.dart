import 'package:flutter/material.dart';
import 'package:new_easylector_app/foundation/color_house/colors.dart';

class Search_bar extends StatefulWidget {
  const Search_bar({super.key});

  @override
  State<Search_bar> createState() => _Search_barState();
}

class _Search_barState extends State<Search_bar> {

  // This controller will store the value of the search bar
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'Search for courses',
        suffixIcon: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () => _searchController.clear(),
        ),
        prefixIcon: IconButton(
          icon: Icon(Icons.search, color: MyColors.maincolor,),
          onPressed: () {
          },
        ),
      ),
    );
  }
}

