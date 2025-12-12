import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Column Kullanımı'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int sayac = 0;

  void sayacArttir() {
    setState(() {
      sayac++;
    });
    print("Sayaç Arttırıldı: $sayac");
  }

  void sayacAzalt() {
    setState(() {
      sayac--;
    });
    print("Sayaç Azaltıldı: $sayac");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: sayac % 2 == 0 ? Colors.lightGreen : Colors.red,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sayaç: $sayac",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: sayac % 2 == 0 ? Colors.black : Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: sayacArttir,
                      child: Text("Artır"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(onPressed: sayacAzalt, child: Text("Azalt")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
