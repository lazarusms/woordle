import 'package:flutter/material.dart';
import 'package:wordle/components/tile.dart';

class Grid extends StatelessWidget {
  const Grid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(36, 20, 36, 20),
        itemCount: 30,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 4, crossAxisSpacing: 4, crossAxisCount: 5),
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Tile(index: index,));
              // git test
        });
  }
}

