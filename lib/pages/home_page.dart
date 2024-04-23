import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wordle/components/grid.dart';
import 'package:wordle/components/keyboard_row.dart';
import 'package:wordle/constants/words.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late String _word;

  @override
  void initState() {
    final r = Random().nextInt(words.length);
    _word = words[r];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Termoo Clone'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
                flex: 7,
                child: Container(color: Colors.yellow, child: const Grid())),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.green,
                  child: const Column(children: [
                    KeyboardRow(min: 1, max: 10),
                    KeyboardRow(min: 11, max: 19),
                    KeyboardRow(min: 20, max: 29),
                  ]),
                )),
          ],
        ));
  }
}
