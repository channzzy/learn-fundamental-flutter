import 'package:flutter/material.dart';

class GestureDetection extends StatefulWidget {
  static const routeName = '/gesture_detection';
  const GestureDetection({Key? key}) : super(key: key);

  @override
  State<GestureDetection> createState() => _GestureDetectionState();
}

class _GestureDetectionState extends State<GestureDetection> {
  final double boxSize = 150.0;
  int numTaps = 0;
  int doubleTaps = 0;
  int longPress = 0;
  double posX = 0.0;
  double posY = 0.0;
  @override
  Widget build(BuildContext context) {
    if (posY == 0) {
      center(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture Decection"),
        actions: const [],
      ),
      body: Stack(children: [
        Positioned(
            top: posY,
            left: posX,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  numTaps++;
                });
              },
              onDoubleTap: () {
                setState(() {
                  doubleTaps++;
                });
              },
              onLongPress: () {
                setState(() {
                  longPress++;
                });
              },
              onPanUpdate: (DragUpdateDetails details) {
                setState(() {
                  double deltaX = details.delta.dx;
                  double deltaY = details.delta.dy;
                  posX += deltaX;
                  posY += deltaY;
                });
              },
              // onVerticalDragUpdate: (DragUpdateDetails details) {
              //   setState(() {
              //     double delta = details.delta.dy;
              //     posY += delta;
              //   });
              // },
              // onHorizontalDragUpdate: (DragUpdateDetails details) {
              //   setState(() {
              //     double delta = details.delta.dx;
              //     posX += delta;
              //   });
              // },
              child: Container(
                width: boxSize,
                height: boxSize,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ))
      ]),
      bottomNavigationBar: Container(
        color: Colors.yellow,
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Taps: $numTaps - Double Taps: $doubleTaps - Long Press: $longPress',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - boxSize;
    posY = (MediaQuery.of(context).size.height / 2) - boxSize;

    setState(() {
      this.posX = posX;
      this.posY = posY;
    });
  }
}
