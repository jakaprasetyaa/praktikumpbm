import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 12;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("JUMPON"),
            backgroundColor: Colors.deepPurple,
          ),
          body: Container(
            color: Colors.pink,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  counter.toString(),
                  style: TextStyle(
                      fontSize: 50 + double.parse(counter.toString()),
                      color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepPurple)),
                      onPressed: () {
                        if (counter != 1) {
                          setState(() {
                            counter--;
                          });
                        }
                        print(counter);
                      },
                      child: Icon(Icons.remove),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepPurple)),
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                        print(counter);
                      },
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
