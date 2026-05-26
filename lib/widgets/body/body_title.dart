import 'package:flutter/material.dart';

class BodyTitle extends StatelessWidget {
  const BodyTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Our Products',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
