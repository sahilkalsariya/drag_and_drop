import 'package:flutter/material.dart';

class visliblity extends StatefulWidget {
  const visliblity({Key? key}) : super(key: key);

  @override
  State<visliblity> createState() => _visliblityState();
}

class _visliblityState extends State<visliblity> {

  bool istigerCathed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visibility Use"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Visibility(
              visible: !istigerCathed,
              child: Draggable(
                childWhenDragging: Container(),
                feedback: Text(
                  "🦁",
                  style: TextStyle(
                      fontSize: 58,
                      decoration:
                      TextDecoration.none),
                ),
                child: Text(
                  "🦁",
                  style: TextStyle(fontSize: 58),
                ),
              ),
            ),
            SizedBox(height: 10),
            DragTarget(
                onAccept: (data){
                  setState((){
                    istigerCathed = true;
                  });
                },
                onWillAccept: (data){
                  if (data == 'tiger'){
                    return true;
                  }
                  else {
                    return false;
                  }
                },
                builder: (context , List accepted , List rejected){
              return Container(
                height: 200,
                width: 200,
                color: (istigerCathed == false) ? Colors.amber : Colors.green,
              );
            })
          ],
        ),
      ),
    );
  }
}
