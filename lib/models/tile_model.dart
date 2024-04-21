import 'package:wordle/constants/answer_stages.dart';

class TileModel {

  final String letter;
  final AnswerStages answerStages;

  TileModel({required this.letter, required this.answerStages});
}