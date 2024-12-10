import 'package:flutter/material.dart';
import 'package:exams/screens/product_details_screen.dart'; // Make sure this path is correct.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProductDetailsScreen(title: 'Ageratum Product Details'), // Pass title parameter
    );
  }
}
