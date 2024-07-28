import 'package:flutter/material.dart';

class SpacedRow extends StatelessWidget {
  final List<Widget> children;
  final double spacing;
  final EdgeInsets padding;
  final MainAxisAlignment mainAxisAlignment;

  const SpacedRow({
    super.key,
    required this.children,
    this.spacing = 10.0,
    this.padding = const EdgeInsets.all(0.0),
    this.mainAxisAlignment = MainAxisAlignment.start // Default padding is zero
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: _addSpacingAndPadding(children, spacing, padding),
    );
  }

  List<Widget> _addSpacingAndPadding(List<Widget> children, double spacing, EdgeInsets padding) {
    List<Widget> spacedChildren = [];
    for (int i = 0; i < children.length; i++) {
      spacedChildren.add(Padding(
        padding: padding,
        child: children[i],
      ));
      if (i < children.length - 1) {
        spacedChildren.add(SizedBox(height: spacing));
      }
    }
    return spacedChildren;
  }
}
