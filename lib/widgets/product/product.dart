import 'package:ex_1/widgets/product/productdetails.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String name;
  final String image;
  final String description;
  final double price;

  const Product({
    super.key,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductDetailsPage(
              name: name,
              image: image,
              description: description,
              price: price,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
