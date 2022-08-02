import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double vertical;
  final double horizontal;
  final double borderRadius;
  final EdgeInsetsGeometry? margin;
  const CustomContainer({
    Key? key,
    required this.child,
    this.vertical = 8.0,
    this.horizontal = 8.0,
    this.borderRadius = 10.0,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
      margin: margin,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
