import 'package:quantum_leap/core/State.dart';

class TwoDimensionalArray {
  int size;
  List<List<State>> matrix;
  final int _skipI = 2;
  final int _skipJ = 2;

  TwoDimensionalArray(this.size) {
    matrix = new List<List<State>>(size);
    populate();
  }

  bool _skipLocation(int i, int j) {
    if (i == this._skipI && j == this._skipJ) return true;
    return false;
  }

  void xLeft() {
    for (var i = 0; i < 3; i++) matrix[i].elementAt(1).flip();
  }

  void xRight() {
    for (var i = 0; i < 3; i++) matrix[1].elementAt(i).flip();
  }

  void hLeft() {
    for (var i = 0; i < 3; i++) {
      State temp1 = matrix[i].elementAt(0);
      State temp2 = matrix[i].elementAt(1);
      matrix[i].removeAt(0);
      matrix[i].insert(0, temp2);
      matrix[i].removeAt(1);
      matrix[i].insert(1, temp1);
    }
  }

  void hRight() {}

  void populate() {
    for (var i = 0; i < size; i++) {
      List<State> list = new List<State>(size);
      for (var j = 0; j < size; j++) {
        if (!_skipLocation(i, j))
          list[j] = new State();
        else
          list[j] = new State.unSet(-1);
      }
      matrix[i] = list;
    }
  }

  void printMatrix() {
    print(matrix);
  }
}
