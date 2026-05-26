import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const Border(bottom: BorderSide(color: Colors.black, width: 1)),
      centerTitle: true,
      backgroundColor: Colors.yellow[100],
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.black, size: 28),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'Pikachu Store',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 2),
          Text(
            'Today • 25 Nov',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_outlined,
            color: Colors.black,
            size: 26,
          ),
        ),
        const SizedBox(width: 8),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
