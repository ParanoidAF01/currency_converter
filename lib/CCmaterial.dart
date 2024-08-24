import 'dart:ui';

import 'package:flutter/material.dart';

class CCmaterial extends StatelessWidget {
  const CCmaterial({super.key});

  @override
  Widget build(BuildContext context) {
    //border of textfield
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(60),
      borderSide: const BorderSide(
        width: 2,
      ),
    );

    return Scaffold(
        backgroundColor: const Color.fromRGBO(209, 233, 255, 1),
        body: Center(
          child: SizedBox(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Currency Converter App',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                    // backgroundColor: Color.fromRGBO(255, 252, 127, 1),
                    // color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                ),
                TextField(
                  style: const TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: const TextStyle(fontStyle: FontStyle.italic),
                    prefixIcon: const Icon(Icons.monetization_on),
                    prefixIconColor: Colors.green,
                    filled: true,
                    fillColor: const Color.fromARGB(128, 230, 207, 0),
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                ),
              ],
            ),
          ),
        ));
  }
}
