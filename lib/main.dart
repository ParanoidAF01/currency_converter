import 'package:currency_converter/CCmaterial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeBody());
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CCmaterial()
    );
  }
}
