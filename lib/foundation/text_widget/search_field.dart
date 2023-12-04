import 'package:flutter/material.dart';
import 'package:new_easylector_app/foundation/color_house/colors.dart';

class Search_bar extends StatefulWidget {
  const Search_bar({super.key});

  @override
  State<Search_bar> createState() => _Search_barState();
}

class _Search_barState extends State<Search_bar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Colors.green,
      child: TextField(
        controller: _searchController,
        cursorColor: MyColors.maincolor,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(3)
          ),
          prefixIcon: IconButton(
            icon: Icon(Icons.search),
            iconSize: 21,
            color: MyColors.maincolor,
            onPressed: () {},
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.clear),
            iconSize: 21,
            color: Colors.grey,
            onPressed: () => _searchController.clear()
          ),
            hintText:'Search for courses'
        ),
      ),
    );
  }
}


