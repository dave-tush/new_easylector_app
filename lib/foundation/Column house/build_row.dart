import 'package:flutter/material.dart';


class RowBuilder extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;

  const RowBuilder({
    required this.itemBuilder,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  List.generate(this.itemCount,
              (index) => this.itemBuilder(context, index)).toList(),
    );
  }
}

