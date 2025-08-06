import 'package:flutter/material.dart';
import 'package:wearit/common/widgets/custom_container/curved_edges.dart';

class TCurvedClipPath extends StatelessWidget {
  const TCurvedClipPath({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCurvedEdges(),
      child: child,
    );
  }
}
