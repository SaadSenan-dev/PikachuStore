import 'package:flutter/material.dart';

class BodyRow extends StatefulWidget {
  const BodyRow({super.key});

  @override
  State<BodyRow> createState() => _BodyRowState();
}

class _BodyRowState extends State<BodyRow> {
  int selectedIndex = 0;

  final List<Map<String, String>> items = [
    {"title": "All", "sub": "99"},
    {"title": "Tech", "sub": "24"},
    {"title": "Audio", "sub": "18"},
    {"title": "Deals", "sub": "12"},
    {"title": "New", "sub": "7"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final item = items[index];
          final isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 70,
              decoration: BoxDecoration(
                color: isSelected ? Colors.yellow[100] : Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                boxShadow: isSelected
                    ? [
                        const BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        )
                      ]
                    : [],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.black : Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item["title"]!,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.black : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item["sub"]!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.black : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
