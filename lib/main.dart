import 'package:flutter/material.dart';
import 'package:maplace/utils/theme.dart';
import 'package:maplace/widgets/home.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      theme: theme,
      home: Home(),
    );
  }
}