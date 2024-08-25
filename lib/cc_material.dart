
//import 'package:currency_converter/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/demo_coloumn.dart';

class CCmaterial extends StatelessWidget {
   const CCmaterial({super.key});

  
  
  @override
  Widget build(BuildContext context) {
    //border of textfield
    

    return Scaffold(
        //backgroundColor:const Color.fromRGBO(209, 233, 255, 1),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Currency Converter"),
        ),
        body: const Center(
          child: DemoColoumn()
        ));
  }
}
