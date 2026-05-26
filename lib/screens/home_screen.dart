import 'package:ex_1/data/product_data.dart';
import 'package:ex_1/widgets/appbar/app_bar.dart';
import 'package:ex_1/widgets/body/body_header.dart';
import 'package:ex_1/widgets/body/body_row.dart';
import 'package:ex_1/widgets/body/body_title.dart';
import 'package:ex_1/widgets/bottombar/bottom_navbar.dart';
import 'package:ex_1/widgets/product/product.dart';
import 'package:ex_1/widgets/sidebar/side_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          const SizedBox(height: 40),
          const BodyHeader(),
          const SizedBox(height: 20),
          const BodyRow(),
          const BodyTitle(),
          const SizedBox(height: 10),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            padding: const EdgeInsets.all(20),
            children: products.map((p) {
              return Product(
                name: p.name,
                image: p.image,
                description: p.description,
                price: p.price,
              );
            }).toList(),
          )),
        ],
      ),
      drawer: Sidebar(),
      bottomNavigationBar: BottomNavbar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
