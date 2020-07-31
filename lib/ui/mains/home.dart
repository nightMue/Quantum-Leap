import 'package:flutter/material.dart';
import 'package:quantum_leap/constants/QuantumLeap.dart';
import 'package:quantum_leap/core/TwoQubitBoard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TwoQubitBoard board;

  @override
  void initState() {
    board = new TwoQubitBoard();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(QuantumLeap.name),
        actions: <Widget>[
          Padding(
            child: Icon(Icons.search),
            padding: const EdgeInsets.only(right: 10.0),
          )
        ],
      ),
      drawer: Drawer(),
      body: Container(
        color: QuantumLeap.bg_main_lighter,
        child: Center(
            child: Text(
          "HOME SCREEN",
          style: TextStyle(color: Colors.white),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () => {board.printBoard()},
        child: Icon(Icons.undo, color: QuantumLeap.bg_main),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  final double cardSize;
  CardView(this.cardSize);

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: new SizedBox.fromSize(
      size: new Size(cardSize, cardSize),
    ));
  }
}
