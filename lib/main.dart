import 'package:flutter/material.dart';
import 'press_me.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coba Coba',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const QrDisplay(),
    );
  }
}

class QrDisplay extends StatefulWidget {
  const QrDisplay({super.key});

  @override
  State<QrDisplay> createState() => _QrDisplayState();
}

class _QrDisplayState extends State<QrDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[NimNamaForm()],
        ),
      ),
    );
  }
}
