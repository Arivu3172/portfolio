import 'package:flutter/material.dart';

class Constants extends StatelessWidget {
  final double height;

  const Constants({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}