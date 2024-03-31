import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom({
    super.key,
    required this.child,
    required this.width,
    required this.color,
    this.borderColor = Colors.transparent,
    required this.height,
    this.onTap,
  });
  Widget child;
  double width, height;
  Color color, borderColor;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
          border: Border.all(color: borderColor, width: 2),
        ),
        child: Center(child: child),
      ),
    );
  }
}
