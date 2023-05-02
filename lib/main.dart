import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState>_scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Enter your name'),
              validator: (value) {
                if ( value==null|| value.isEmpty) {
                  return 'Enter correct name';
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Enter your email'),
              validator: (value) {
                if (value==null|| value.isEmpty) {
                  return 'Enter correct email';
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9,+]'))
              ],
              decoration: InputDecoration(labelText: 'Enter your number'),
              validator: (value) {
                if (value==null || value.isEmpty) {
                  return 'Enter correct number';
                } else {
                  return null;
                }
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    final snackBar = SnackBar(content: Text('Submitting'));
                     
                  }
                },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
