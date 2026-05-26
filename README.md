# Pikachu Store

A clean, component-driven Flutter e-commerce application showcasing product browsing and detail views with a minimal, modern UI aesthetic.

---

## Overview

Pikachu Store is a Flutter mobile application built as a structured, multi-widget project. It demonstrates scalable widget architecture, network image loading, screen navigation, and stateful UI interactions — designed to reflect production-quality code organization.

---

## Features

- **Product Grid** — Responsive 2-column grid displaying products with cover images fetched from network URLs
- **Product Detail Screen** — Full product page with image, name, description, price, and a "Buy Now" CTA
- **Category Filter Row** — Horizontally scrollable animated category selector with item count badges
- **Custom App Bar** — Branded app bar with date display, search icon, and drawer toggle
- **Sidebar Drawer** — Navigation drawer with user profile header and main nav links
- **Bottom Navigation Bar** — Persistent bottom nav with Home, Cart, and Wallet tabs
- **Promotional Header Banner** — Eye-catching daily discount banner with a local asset image
- **Smooth Navigation** — `Navigator.push` / `Navigator.pop` transitions between screens

---



| Home Screen | Product Detail | Sidebar |
|:-----------:|:--------------:|:-------:|
| `screenshot_home.png` | `screenshot_detail.png` | `screenshot_sidebar.png` |

---

## Tech Stack

| Technology | Details |
|---|---|
| **Framework** | Flutter (Dart) |
| **Language** | Dart 3 |
| **State Management** | `StatefulWidget` / `setState` |
| **Navigation** | Flutter Navigator 2.0 (imperative) |
| **Image Loading** | `NetworkImage` / `Image.network` |
| **Custom Font** | `Faculty` (declared in `pubspec.yaml`) |
| **Asset Images** | Local PNG asset (`images/logoheader.png`) |

---

## Project Structure

```
lib/
├── main.dart                   # App entry point
├── app.dart                    # Root MaterialApp configuration
│
├── data/
│   └── product_data.dart       # ProductModel class + static product list
│
├── screens/
│   └── home_screen.dart        # Main screen (Scaffold, grid, layout)
│
└── widgets/
    ├── appbar/
    │   └── app_bar.dart        # CustomAppBar (PreferredSizeWidget)
    ├── body/
    │   ├── body_header.dart    # Promotional banner widget
    │   ├── body_row.dart       # Animated category filter row
    │   └── body_title.dart     # "Our Products" section title
    ├── bottombar/
    │   └── bottom_navbar.dart  # Bottom navigation bar widget
    ├── product/
    │   ├── product.dart        # Product grid card (tappable)
    │   └── productdetails.dart # Full product detail screen
    └── sidebar/
        └── side_bar.dart       # Drawer navigation widget
```

---

## Installation

### Prerequisites

- Flutter SDK `>=3.10.0` (recommended: `3.27.x` for stable compatibility)
- Dart SDK `>=3.0.0`
- Android Studio / VS Code with Flutter & Dart plugins
- A connected device or emulator

### Steps

1. **Clone the repository**

   ```bash
   git clone https://github.com/your-username/pikachu-store.git
   cd pikachu-store
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Verify your Flutter setup**

   ```bash
   flutter doctor
   ```

4. **Ensure assets are declared in `pubspec.yaml`**

   ```yaml
   flutter:
     assets:
       - images/logoheader.png
     fonts:
       - family: Faculty
         fonts:
           - asset: fonts/Faculty-Regular.ttf
   ```

   > Place your font file under `fonts/` and the logo under `images/` at the project root.

---

## Running the App

```bash
# Run on connected device or emulator
flutter run

# Run in release mode
flutter run --release

# Build APK
flutter build apk --release
```

---

## UI & UX Notes

- **Color Palette** — Predominantly `Colors.yellow[100]` for surface accents, black borders, and white card backgrounds, creating a high-contrast minimal aesthetic.
- **Typography** — Custom `Faculty` font applied globally via `ThemeData`, ensuring consistent typographic branding throughout all screens.
- **Animated Category Tabs** — `AnimatedContainer` drives smooth background and shadow transitions on category selection with a 200ms duration.
- **Card Navigation** — Product cards use `InkWell` with a matching `borderRadius` for properly clipped ripple feedback on tap.
- **Grid Layout** — `GridView.count` with `crossAxisCount: 2` and symmetric spacing for a clean, symmetric product grid.
- **Drawer Header** — Rounded bottom corners on the sidebar header give it a card-like separation from the list items below.

---

## Future Improvements

- **State Management Migration** — Introduce Riverpod or Bloc for scalable, testable state handling as features grow
- **Cart Functionality** — Implement a real cart screen with add/remove item logic and a running total
- **Search Screen** — Wire up the search icon in the app bar to a dedicated search and filter screen
- **Category Filtering** — Connect the category row selection to dynamically filter the product grid
- **Favorites / Wishlist** — Persist favorited products using `shared_preferences` or a local database
- **API Integration** — Replace the static `product_data.dart` list with a REST API or Firebase data source
- **Error & Loading States** — Add skeleton loaders and error widgets for network image failures

---

## License

This project is licensed under the [MIT License](LICENSE).

```
MIT License

Copyright (c) 2024 Saad Sinan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
