import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  const KText({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
  });
  final String text;
  final FontWeight fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: TextStyle(fontWeight: fontWeight, fontSize: fontSize),
    );
  }
}
