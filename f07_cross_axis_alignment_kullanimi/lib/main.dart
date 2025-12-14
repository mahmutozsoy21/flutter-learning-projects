import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("CrossAxisAlignment Örneği")),
        body: Column(
          // Ana eksen: dikey

          // Çapraz eksen: yatay
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: 150,
              height: 50,
              child: const Text("Start"),
            ),
            Container(
              color: Colors.green,
              width: 100,
              height: 50,
              child: const Text("Ortalanmamış"),
            ),
            Container(
              color: Colors.blue,
              width: 200,
              height: 50,
              child: const Text("En geniş"),
            ),
          ],
        ),
      ),
    );
  }
}
