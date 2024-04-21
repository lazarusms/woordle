import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle/controller.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Controller()),
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Termoo Clone',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}
