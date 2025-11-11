import 'package:flutter/material.dart';
import ' package:'
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: LinearGradient(
            colors: Colors.red[300],

            ), 
          
        ),
        begin: Alignment.bottomCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }
}
