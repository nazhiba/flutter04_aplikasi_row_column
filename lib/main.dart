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
      appBar: AppBar(
        title: const Text("Latihan row dan column"),
      ),
      /*
        APPBAR - menambahkan appbar pada Aplikasi
      */
      body: const Column(
        /*
          ROW - Tata letaknya akan disusun secara Horizontal
          ____________________________________________________
          COLUMN - Berfungsi untuk mengatur tataletak widget
          yang ada di dalam column tersebut

          - dapat terdiri dari beberapa widget lagi
          - dan tata letaknya akan disusun kebawah secara vertikal
        */
        mainAxisAlignment: MainAxisAlignment.center, // Column = Center Vertikal, Row = Center Horizontal
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /*
            CHILDREN - Kumpulan widget 
          */
          Text("Text 1"),
          Text("Text 2"),
          Text("Text 3"),
          
          Row(
            // ROW  di dalam COLUMN
            children: [
              Text("Text 4"),
              Text("Text 5"),
              Text("Text 6")
            ],
          ) 

        ],
      ),
    )
    );
  }
}
