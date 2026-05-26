import 'package:flutter/material.dart';

class BodyHeader extends StatelessWidget {
  const BodyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 380,
        height: 150,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
          color: Colors.yellow[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Daily',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'discounts available',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Image.asset(
              'images/logoheader.png',
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
