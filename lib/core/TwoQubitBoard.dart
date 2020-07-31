import 'package:quantum_leap/core/TwoDimensionalArray.dart';

class TwoQubitBoard {
  TwoDimensionalArray _board;
  final int _skipI = 2;
  final int _skipJ = 0;

  TwoQubitBoard() {
    _board = new TwoDimensionalArray(3);
    _populateBoard();
    xGate(0);
    hGate(0);
  }

  //int get launchYear => launchDate?.year; // read-only non-final property

  void _populateBoard() {
    _board.populate();
  }

  void xGate(int qubit) {
    if (qubit == 0)
      _board.xLeft();
    else
      _board.xRight();
  }

  void hGate(int qubit) {
    if (qubit == 0)
      _board.hLeft();
    else
      _board.hRight();
  }

  void printBoard() {
    _board.printMatrix();
  }
}
