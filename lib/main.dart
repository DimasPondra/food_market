import 'package:flutter/material.dart';

import 'ui/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GeneralPage(
          onBackButtonPressed: () {},
          child: const Text('body'),
        ));
  }
}
