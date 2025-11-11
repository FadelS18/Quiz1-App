import 'dart:math';
import 'package:flutter/material.dart';

class CardsHomePage extends StatefulWidget {
  const CardsHomePage({super.key});

  @override
  State<CardsHomePage> createState() => _CardsHomePageState();
}

class _CardsHomePageState extends State<CardsHomePage> {
  final List<String> emojis = ["♠️", "♥️", "♦️", "♣️", "🃏"];
  final Random random = Random();

  List<String> selectedCards = ["?", "?", "?"];
  bool jokerFound = false;

  void selectCards() {
    List<String> newCards = List.generate(
      3,
      (_) => emojis[random.nextInt(emojis.length)],
    );

    setState(() {
      selectedCards = newCards;
      jokerFound = newCards.contains("🃏");
    });
  }

  void resetCards() {
    setState(() {
      selectedCards = ["?", "?", "?"];
      jokerFound = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB71C1C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Cards row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: selectedCards
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        e,
                        style: const TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),

            const SizedBox(height: 20),

            /// Joker message
            if (jokerFound)
              const Text(
                "🃏 The Joker is in there!",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

            const SizedBox(height: 40),

            /// Select cards button
            ElevatedButton(
              onPressed: selectCards,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
              ),
              child: const Text("Select Cards"),
            ),

            const SizedBox(height: 12),

            /// Reset button
            ElevatedButton(
              onPressed: resetCards,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
