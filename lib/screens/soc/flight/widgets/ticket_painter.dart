import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';

class TicketPainter extends CustomPainter {
  static const _borderRadius = 8.0;
  static const _clipRadius = 8.0;

  @override
  void paint(Canvas canvas, Size size) {
    final heightOfSemiCircle = size.height / 2 + 15;

    // Paint card
    Path path = Path()

      // paint semi-circle left
      ..moveTo(0, heightOfSemiCircle - _clipRadius)
      ..arcToPoint(
        Offset(_clipRadius, heightOfSemiCircle),
        radius: const Radius.circular(_clipRadius),
        clockwise: true,
      )
      ..arcToPoint(
        Offset(0, heightOfSemiCircle + _clipRadius),
        radius: const Radius.circular(_clipRadius),
        clockwise: true,
      )

      // paint border radius bottom left
      ..lineTo(0, size.height - _borderRadius)
      ..arcToPoint(
        Offset(_borderRadius, size.height),
        radius: const Radius.circular(_borderRadius),
        clockwise: false,
      )

      // paint border radius bottom right
      ..lineTo(size.width - _borderRadius, size.height)
      ..arcToPoint(
        Offset(size.width, size.height - _borderRadius),
        radius: const Radius.circular(_borderRadius),
        clockwise: false,
      )

      // paint semi-circles right
      ..lineTo(size.width, heightOfSemiCircle + _clipRadius)
      ..arcToPoint(
        Offset(size.width - _clipRadius, heightOfSemiCircle),
        radius: const Radius.circular(_clipRadius),
        clockwise: true,
      )
      ..arcToPoint(
        Offset(size.width, heightOfSemiCircle - _clipRadius),
        radius: const Radius.circular(_clipRadius),
        clockwise: true,
      )

      // paint border radius top right
      ..lineTo(size.width, _borderRadius)
      ..arcToPoint(
        Offset(size.width - _borderRadius, 0),
        radius: const Radius.circular(_borderRadius),
        clockwise: false,
      )

      // paint border radius top left
      ..lineTo(_borderRadius, 0)
      ..arcToPoint(
        const Offset(0, _borderRadius),
        radius: const Radius.circular(_borderRadius),
        clockwise: false,
      )
      ..lineTo(0, heightOfSemiCircle - _clipRadius);

    Paint childPaint = Paint()
      ..color = AppColors.baseWhite
      ..style = PaintingStyle.fill;

    Paint borderPaint = Paint()
      ..color = AppColors.gray200
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    canvas.drawPath(path, childPaint);
    canvas.drawPath(path, borderPaint);

    // Paint dash line
    double startX = _clipRadius;
    double endX = _clipRadius + size.width - 2 * _clipRadius;
    double dashWidth = 9;
    double dashSpace = 5;

    Paint linePaint = Paint()
      ..color = AppColors.gray200
      ..strokeWidth = 1;

    while (startX < endX) {
      canvas.drawLine(
        Offset(startX, heightOfSemiCircle),
        Offset(startX + dashWidth, heightOfSemiCircle),
        linePaint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
