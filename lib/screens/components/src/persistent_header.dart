import 'package:flutter/material.dart';

class PersistentHeader extends SliverPersistentHeaderDelegate {
  PersistentHeader({
    required this.child,
    this.maxHeight = 310.0,
    this.minHeight = 310.0,
  });

  final double maxHeight;
  final double minHeight;
  final Widget child;

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant PersistentHeader oldDelegate) {
    return oldDelegate.child != child;
  }
}
