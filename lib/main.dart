import 'package:flutter/material.dart';
import 'package:flutter_formz_demo/widgets/email_formz.dart';
import 'package:flutter_formz_demo/widgets/email_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Formz Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            runSpacing: 24.0,
            alignment: WrapAlignment.center,
            children: const [
              EmailTextField(),
              EmailFormz(),
            ],
          ),
        ),
      ),
    );
  }
}
