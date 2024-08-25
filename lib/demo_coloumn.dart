import 'package:flutter/material.dart';

class DemoColoumn extends StatefulWidget {
  const DemoColoumn({super.key});

@override
State<DemoColoumn> createState() { return  _DemoColoumn();}
}

class _DemoColoumn extends State<DemoColoumn> {
double result=0;
final TextEditingController textEditingController = TextEditingController();
@override
  Widget build(BuildContext context){


final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(60),
      borderSide: const BorderSide(
        width: 2,
      ),
    );
  return SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '₹ $result',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                    // backgroundColor: Color.fromRGBO(255, 252, 127, 1),
                    // color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: textEditingController,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      hintText: 'Please enter the amount in USD',
                      hintStyle: const TextStyle(
                      fontWeight: FontWeight.w400),
                      
                      prefixIcon: const Icon(Icons.monetization_on),
                      prefixIconColor: Colors.green,
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 235, 59, 1),
                      focusedBorder: border,
                      enabledBorder: border,
                    ),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: (
                  ) {
                    
                    setState(() {
                      result=double.parse(textEditingController.text)*83;
                    });
                  },
                  style: const ButtonStyle(
                    //overlayColor: WidgetStatePropertyAll(Color.fromRGBO(0, 251, 255, 0.642)),
                    elevation: WidgetStatePropertyAll(10),
                    backgroundColor:
                        WidgetStatePropertyAll(Color.fromRGBO(255, 235, 59, 1)),
                    side: WidgetStatePropertyAll(
                      BorderSide(
                        color: Colors.black,
                        width: 2
                      ),
                    ),
                  ),
                  child: const Text(
                    "Convert",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20
                    ),
                  ),
                ),
              ],
            ),
          );
  }
  }
  


















