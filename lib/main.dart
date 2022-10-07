import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'log.dart';
import 'admin.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    ),
  );
}

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      // backgroundColor: Colors.grey[850],
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('TRIISUM'),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            color: Colors.amber,
            tooltip: 'Go to Settings',
            onPressed: () {},
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Areesha Anir',
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
          )
        ],
      ),
      body: const log(),
    );
  }
}
