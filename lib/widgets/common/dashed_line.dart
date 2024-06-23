import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';

class DashedLine extends StatelessWidget {
  final Color color;
  final double dashSpace;
  final double dashWidth;
  final EdgeInsets padding;
  final Widget? child;
  final EdgeInsets childPadding;

  const DashedLine({
    super.key,
    this.color = AppColors.gray200,
    this.dashSpace = 5,
    this.dashWidth = 9,
    this.padding = const EdgeInsets.symmetric(vertical: 8.0),
    this.child,
    this.childPadding = const EdgeInsets.symmetric(horizontal: 18.0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: (child != null)
          ? Row(
              children: [
                Expanded(
                  child: CustomPaint(
                    size: const Size(double.infinity, 1),
                    painter: _DashedLinePainter(color, dashSpace, dashWidth),
                  ),
                ),
                Padding(
                  padding: childPadding,
                  child: child!,
                ),
                Expanded(
                  child: CustomPaint(
                    size: const Size(double.infinity, 1),
                    painter: _DashedLinePainter(color, dashSpace, dashWidth),
                  ),
                ),
              ],
            )
          : CustomPaint(
              size: const Size(double.infinity, 1),
              painter: _DashedLinePainter(color, dashSpace, dashWidth),
            ),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final Color color;
  final double dashSpace;
  final double dashWidth;

  _DashedLinePainter(this.color, this.dashSpace, this.dashWidth);

  @override
  void paint(Canvas canvas, Size size) {
    double startX = 0;
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
