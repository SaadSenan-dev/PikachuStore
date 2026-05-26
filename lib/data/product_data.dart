class ProductModel {
  final String name;
  final String image;
  final String description;
  final double price;

  ProductModel({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });
}

final List<ProductModel> products = [
  ProductModel(
    name: "Headphone",
    image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e",
    description: "High quality sound and deep bass",
    price: 120,
  ),
  ProductModel(
    name: "Smart Watch",
    image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30",
    description: "Track your health and notifications",
    price: 200,
  ),
  ProductModel(
    name: "iPhone",
    image: "https://images.unsplash.com/photo-1510557880182-3d4d3cba35a5",
    description: "Latest Apple smartphone with powerful camera",
    price: 1200,
  ),
  ProductModel(
    name: "MacBook",
    image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8",
    description: "High performance laptop for developers",
    price: 2500,
  ),
  ProductModel(
    name: "Camera",
    image: "https://images.unsplash.com/photo-1502920917128-1aa500764ce7",
    description: "Professional DSLR camera for photography",
    price: 800,
  ),
  ProductModel(
    name: "Sneakers",
    image: "https://images.unsplash.com/photo-1528701800489-20be3c3ea7c3",
    description: "Comfortable and stylish running shoes",
    price: 150,
  ),
  ProductModel(
    name: "Backpack",
    image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62",
    description: "Durable backpack for travel and work",
    price: 90,
  ),
  ProductModel(
    name: "Gaming Mouse",
    image: "https://images.unsplash.com/photo-1527814050087-3793815479db",
    description: "High precision RGB gaming mouse",
    price: 70,
  ),
  ProductModel(
    name: "Keyboard",
    image: "https://images.unsplash.com/photo-1511467687858-23d96c32e4ae",
    description: "Mechanical keyboard for gaming & coding",
    price: 110,
  ),
  ProductModel(
    name: "Tablet",
    image: "https://images.unsplash.com/photo-1587033411391-5d9e51cce126",
    description: "Portable tablet for work and entertainment",
    price: 600,
  ),
];
