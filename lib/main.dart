import 'package:flutter/material.dart';
import 'package:platdev24/src/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Set the background color here

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black, // Set a background color for dark theme if needed
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),

      themeMode: ThemeMode.light, // Set theme mode to light, dark, or system
      home: const LoginScreen(),
    );
  }
}
