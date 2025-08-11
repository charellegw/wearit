import 'package:flutter/material.dart';

class TCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    // Left Curve
    final leftStartPoint = Offset(0, size.height - 20);
    final leftEndPoint = Offset(30, size.height - 20);
    path.quadraticBezierTo(leftStartPoint.dx, leftStartPoint.dy, leftEndPoint.dx, leftEndPoint.dy);

    // Center Straight Line
    final lineStartPoint = Offset(0, size.height - 20);
    final lineEndPoint = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(lineStartPoint.dx, lineStartPoint.dy, lineEndPoint.dx, lineEndPoint.dy);

    // Right Curve
    final rightStartPoint = Offset(size.width, size.height - 20);
    final rightEndPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(rightStartPoint.dx, rightStartPoint.dy, rightEndPoint.dx, rightEndPoint.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
