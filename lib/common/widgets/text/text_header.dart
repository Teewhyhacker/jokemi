import 'package:flutter/material.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({
    super.key,
    required this.title,
    this.color,
  });
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineSmall!
          .copyWith(fontWeight: FontWeight.bold, color: color),
    );
  }
}
