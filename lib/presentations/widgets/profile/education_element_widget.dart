import 'package:flutter/material.dart';

class EducationElementWidget extends StatelessWidget {
  final IconData icon;
  final String label1;
  final String label2;
  const EducationElementWidget({
    Key? key,
    required this.icon,
    required this.label1,
    required this.label2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: RichText(
        text: TextSpan(
          text: "$label1 ",
          style: Theme.of(context).textTheme.bodyText1,
          children: [
            TextSpan(
              text: label2,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
