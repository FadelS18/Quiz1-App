import 'package:flutter/material.dart';
import 'cards_page.dart';

void main() {
  runApp(const CardsApp());
}

class CardsApp extends StatelessWidget {
  const CardsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardsHomePage(),
    );
  }
}

