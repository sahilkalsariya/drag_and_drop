import 'package:flutter/material.dart';

class DraggableSimple extends StatefulWidget {
  const DraggableSimple({Key? key}) : super(key: key);

  @override
  State<DraggableSimple> createState() => _DraggableSimpleState();
}

class _DraggableSimpleState extends State<DraggableSimple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Draggable Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Draggable(
              //axis: Axis.vertical, // 1 side mpmment karva mate
              childWhenDragging: Container(),
              // icon ne remove karva aetle khali container mukiyu..
              feedback: Text(
                "🦁",
                style: TextStyle(
                    fontSize: 58,
                    decoration:
                    TextDecoration.none), // halan chalan karvaa mate ..
              ),
              child: Text(
                "🦁",
                style: TextStyle(fontSize: 58),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
