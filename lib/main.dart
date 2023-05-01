import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Enter your name'),
            validator: (value) {
              if (value!.isEmpty || !RegExp(r'[a-z A-Z]+$').hasMatch(value!)) {
                return 'Enter correct name';
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Enter your email'),
            validator: (value) {
              if (value!.isEmpty || !RegExp(r'[a-z A-Z]+$').hasMatch(value!)) {
                return 'Enter correct email';
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Enter your name'),
            validator: (value) {
              if (value!.isEmpty || !RegExp(r'[a-z A-Z]+$').hasMatch(value!)) {
                return 'Enter correct name';
              } else {
                return null;
              }
            },
          )
        ],
      ),
    );
  }
}
