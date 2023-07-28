import 'package:flutter/material.dart';

import 'Features/Home/UI/Home.dart';

void main() {
  runApp(BiteStories());
}

class BiteStories extends StatelessWidget {
  const BiteStories({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.purple),
      home: Home(),
    );
  }
}
