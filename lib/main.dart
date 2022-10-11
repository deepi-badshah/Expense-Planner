import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Futter Project",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            child: const Card(
              color: Colors.orange,
              elevation: 20,
              child: Text(
                "Card",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Spacer(),
          const Card(
            color: Colors.orange,
            child: Text(
              "List of Tx",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
