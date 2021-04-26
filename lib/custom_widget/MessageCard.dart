import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';

//Add this CustomPaint widget to the Widget Tree
/*
CustomPaint(
size: Size(MediaQuery.of(context).size.width, (MediaQuery.of(context).size.width/1.5).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
painter: MessageCard(),
)
*/

class MessageCard extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.9910156,size.height*0.8953125);
    path_0.cubicTo(size.width*0.9910156,size.height*0.8962891,size.width*0.9908203,size.height*0.8966797,size.width*0.9906250,size.height*0.8974609);
    path_0.cubicTo(size.width*0.9904297,size.height*0.8984375,size.width*0.9900391,size.height*0.8994141,size.width*0.9898438,size.height*0.9003906);
    path_0.cubicTo(size.width*0.9878906,size.height*0.9056641,size.width*0.9851563,size.height*0.9087891,size.width*0.9812500,size.height*0.9093750);
    path_0.cubicTo(size.width*0.9800781,size.height*0.9095703,size.width*0.9789063,size.height*0.9095703,size.width*0.9775391,size.height*0.9095703);
    path_0.cubicTo(size.width*0.8343750,size.height*0.9095703,size.width*0.6914063,size.height*0.9095703,size.width*0.5480469,size.height*0.9095703);
    path_0.cubicTo(size.width*0.5470703,size.height*0.9095703,size.width*0.5460938,size.height*0.9091797,size.width*0.5451172,size.height*0.9099609);
    path_0.cubicTo(size.width*0.5443359,size.height*0.9105469,size.width*0.5439453,size.height*0.9115234,size.width*0.5433594,size.height*0.9125000);
    path_0.cubicTo(size.width*0.5277344,size.height*0.9380859,size.width*0.5125000,size.height*0.9634766,size.width*0.4968750,size.height*0.9888672);
    path_0.cubicTo(size.width*0.4962891,size.height*0.9896484,size.width*0.4958984,size.height*0.9906250,size.width*0.4953125,size.height*0.9914063);
    path_0.cubicTo(size.width*0.4943359,size.height*0.9908203,size.width*0.4937500,size.height*0.9896484,size.width*0.4931641,size.height*0.9886719);
    path_0.cubicTo(size.width*0.4767578,size.height*0.9630859,size.width*0.4603516,size.height*0.9376953,size.width*0.4439453,size.height*0.9121094);
    path_0.cubicTo(size.width*0.4427734,size.height*0.9103516,size.width*0.4417969,size.height*0.9095703,size.width*0.4400391,size.height*0.9095703);
    path_0.cubicTo(size.width*0.3925781,size.height*0.9095703,size.width*0.3453125,size.height*0.9095703,size.width*0.2978516,size.height*0.9095703);
    path_0.cubicTo(size.width*0.2355469,size.height*0.9095703,size.width*0.1732422,size.height*0.9095703,size.width*0.1109375,size.height*0.9093750);
    path_0.cubicTo(size.width*0.08085938,size.height*0.9093750,size.width*0.05078125,size.height*0.9093750,size.width*0.02070313,size.height*0.9093750);
    path_0.cubicTo(size.width*0.01933594,size.height*0.9093750,size.width*0.01777344,size.height*0.9093750,size.width*0.01640625,size.height*0.9087891);
    path_0.cubicTo(size.width*0.01132813,size.height*0.9066406,size.width*0.008984375,size.height*0.9011719,size.width*0.008398438,size.height*0.8935547);
    path_0.cubicTo(size.width*0.008398438,size.height*0.8923828,size.width*0.008398438,size.height*0.8912109,size.width*0.008398438,size.height*0.8900391);
    path_0.cubicTo(size.width*0.008984375,size.height*0.6027344,size.width*0.008984375,size.height*0.3154297,size.width*0.008984375,size.height*0.02832031);
    path_0.cubicTo(size.width*0.008984375,size.height*0.02636719,size.width*0.008984375,size.height*0.02441406,size.width*0.009179687,size.height*0.02265625);
    path_0.cubicTo(size.width*0.01035156,size.height*0.01464844,size.width*0.01445312,size.height*0.009179687,size.width*0.01972656,size.height*0.009179687);
    path_0.cubicTo(size.width*0.02050781,size.height*0.008984375,size.width*0.02128906,size.height*0.008984375,size.width*0.02207031,size.height*0.008984375);
    path_0.cubicTo(size.width*0.3406250,size.height*0.008984375,size.width*0.6591797,size.height*0.008984375,size.width*0.9779297,size.height*0.008984375);
    path_0.cubicTo(size.width*0.9792969,size.height*0.008984375,size.width*0.9808594,size.height*0.008789063,size.width*0.9822266,size.height*0.009179687);
    path_0.cubicTo(size.width*0.9863281,size.height*0.01054687,size.width*0.9888672,size.height*0.01425781,size.width*0.9904297,size.height*0.02011719);
    path_0.cubicTo(size.width*0.9906250,size.height*0.02089844,size.width*0.9908203,size.height*0.02167969,size.width*0.9910156,size.height*0.02265625);
    path_0.cubicTo(size.width*0.9910156,size.height*0.02558594,size.width*0.9910156,size.height*0.02851562,size.width*0.9910156,size.height*0.03144531);
    path_0.cubicTo(size.width*0.9910156,size.height*0.3136719,size.width*0.9910156,size.height*0.5962891,size.width*0.9910156,size.height*0.8785156);
    path_0.cubicTo(size.width*0.9910156,size.height*0.8841797,size.width*0.9910156,size.height*0.8896484,size.width*0.9910156,size.height*0.8953125);
    path_0.close();

    Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
    paint_0_stroke.color=Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_stroke);

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff333333).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}