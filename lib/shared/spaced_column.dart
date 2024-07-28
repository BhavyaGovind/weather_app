import 'package:flutter/material.dart';

class SpacedColumn extends StatelessWidget {
  final List<Widget> children;
  final double spacing;
  final EdgeInsets padding;
  final MainAxisAlignment mainAxisAlignment;

  const SpacedColumn({
    super.key,
    required this.children,
    this.spacing = 10.0,
    this.padding = const EdgeInsets.all(0.0), 
    this.mainAxisAlignment = MainAxisAlignment.start
    
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      children: _addSpacingAndPadding(children, spacing, padding),
      
    );
  }

  List<Widget> _addSpacingAndPadding(List<Widget> children, double spacing, EdgeInsets padding) {
    List<Widget> spacedChildren = [];
    spacedChildren.add(SizedBox(height: spacing));
    for (int i = 0; i < children.length; i++) {
      spacedChildren.add(Padding(
        padding: padding,
        child: children[i],
      ));
      if (i < children.length - 1) {
        spacedChildren.add(SizedBox(height: spacing));
      }
      spacedChildren.add(SizedBox(height: spacing));
    }
    return spacedChildren;
  }
}
