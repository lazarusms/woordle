import 'package:flutter/material.dart';
import 'package:wordle/constants/answer_stages.dart';
import 'package:wordle/models/tile_model.dart';

class Controller extends ChangeNotifier {
  
  int currentTile = 0, currentRow = 0;
  List<TileModel> tilesEntered = [];

  setKeyTapped({required String value}) {
    if (value == 'ENTER') {
      if(currentTile == 5 * (currentRow + 1)) {
        currentRow++;
        print('ENTER');
 
      }
    } 
    else if (value == 'BACK') {
      if (currentTile > 5 * (currentRow + 1) - 5) {
        tilesEntered.removeLast();
        currentTile--;
      }
    }
     else {

      if (currentTile < 5 * (currentRow + 1)) {
        tilesEntered.add(TileModel(letter: value, answerStages: AnswerStages.notAnswered));
        currentTile++;
      }

    }
    notifyListeners();
  }
}
