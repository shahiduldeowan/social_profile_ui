import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonName;
  final double radius;
  final void Function() onPressed;
  final Color? primaryColor;

  const CustomElevatedButton({
    Key? key,
    required this.buttonName,
    this.radius = 10.8,
    this.primaryColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            radius,
          ),
        ),
        primary: primaryColor,
      ),
      child: Text(
        buttonName,
      ),
    );
  }
}
