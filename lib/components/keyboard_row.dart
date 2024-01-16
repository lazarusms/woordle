import 'package:demoapp/data/keys_map.dart';
import 'package:flutter/material.dart';

class KeyboardRow extends StatelessWidget {
  const KeyboardRow({required this.min, required this.max, super.key});

  final int min, max;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int index = 0;
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: keysMap.entries.map((e) {
          index++;
          if (index >= min && index <= max) {
            return Padding(
              padding: EdgeInsets.all(size.width * 0.006),
              child: Container(
                  color: Colors.red,
                  width: e.key == 'ENTER' || e.key == 'BACK'
                      ? size.width * 0.13
                      : size.width * 0.085,
                  height: size.height * 0.090,
                  child: Material(
                      child: InkWell(onTap: () {}, child: Center(child: Text(e.key))))),
            );
          } else {
            return const SizedBox(); // Replace with an empty widget if condition is not met
          }
        }).toList());
  }
}
