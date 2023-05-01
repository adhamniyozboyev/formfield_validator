import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final formKey = GlobalKey<FormState>();
  String name = "";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffolKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffolKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  'Here to get',
                  style: TextStyle(fontSize: 30, color: Colors.purple),
                ),
                Text(
                  'Welcomed !',
                  style: TextStyle(fontSize: 30, color: Colors.purple),
                ),
                SizedBox(
                  height: height * 0.05,
                )
              ],
            )),
      ),
    );
  }
}
