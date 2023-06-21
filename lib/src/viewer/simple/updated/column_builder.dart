import 'package:flutter/material.dart';

///* [ColumnBuilder] - This widget is designed to build a column layout with a specified number of child widgets,
/// which are generated dynamically based on an IndexedWidgetBuilder function.

class ColumnBuilder extends StatelessWidget {
  // These are the instance variables or properties of the class ColumnBuilder
  final IndexedWidgetBuilder itemBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final VerticalDirection verticalDirection;
  final int itemCount;

  // This is a constructor function for initializing the instance variables of the class ColumnBuilder
  const ColumnBuilder({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.verticalDirection = VerticalDirection.down,
  }) : super(key: key);

  // This is an override build method to return a widget that will be displayed on the screen.
  @override
  Widget build(BuildContext context) {
    // A column widget is returned with properties taken from the instance variables of the class.
    // List.generate generates a list of widgets based on itemCount and itemBuilder function, then it's converted to a list using toList() function.
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      mainAxisAlignment: mainAxisAlignment,
      verticalDirection: verticalDirection,
      children: List.generate(itemCount, (index) => itemBuilder(context, index), growable: false).toList(),
    );
  }
}
