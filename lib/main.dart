import 'package:flutter/material.dart';
import 'dart:developer'; // Untuk log

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Note',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home Page',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
          ),
        ),
        body: SafeArea(
            child: Center(
              child: Column( // Menggunakan Column untuk menyusun beberapa widget secara vertikal
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("This text is in the center of the screen"),
                  const SizedBox(height: 16.0),
                  Container(
                    width: 200.0,
                    height: 100.0,
                    color: Colors.indigo, // Menggunakan Colors.indigo
                    child: const Center( // Memusatkan teks di dalam container
                      child: Text(
                        'Text without center',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0), // Jarak antar widget
                  Container(
                    width: 200.0,
                    height: 100.0,
                    color: Colors.green, // Menggunakan Colors.green
                    child: const Center( // Memusatkan teks di dalam container
                      child: Text(
                        'Text with center',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),
        );
    }
}