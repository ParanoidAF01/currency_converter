import 'package:currency_converter/cc_material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeBody());
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CCmaterial()
    );
  }
}
