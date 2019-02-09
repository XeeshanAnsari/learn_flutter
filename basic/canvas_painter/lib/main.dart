import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Canvas',
      home: Scaffold(
        body: CustomPaint(
          painter: MyCanvasPainter(),
          ),
        )
    );
  }
}

class MyCanvasPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.lightBlue[100];
    canvas.drawCircle(Offset(200.0, 200.0), 60.0, paint);
    canvas.drawCircle(Offset(200.0, 500.0), 60.0, paint);
    Paint paintRect = Paint();
    paintRect.color = Colors.lightBlue;
    Rect rect = Rect.fromPoints(Offset(20.0, 300.0), Offset(380.0, 400.0));
    canvas.drawRect(rect, paintRect);
  }

  bool shouldRepaint(MyCanvasPainter oldDelegate) => false;
  bool shouldRebuildSemantics(MyCanvasPainter oldDelegate) => false;
}
