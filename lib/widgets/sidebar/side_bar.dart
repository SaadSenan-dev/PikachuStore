import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 2,
                )
              ],
              color: Colors.yellow[100],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 30,
                ),
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Pikachu Store",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Welcome back 👋",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text("Cart"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text("Favorites"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {},
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Version 1.0",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
