import 'package:flutter/material.dart';

class ColumnBuilder extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;

  const ColumnBuilder({
    required this.itemBuilder,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          this.itemCount, (index) => this.itemBuilder(context, index)).toList(),
    );
  }
}
