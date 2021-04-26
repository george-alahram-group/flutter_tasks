import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';

//Add this CustomPaint widget to the Widget Tree
/*CustomPaint(
//You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
size: Size(WIDTH, (WIDTH*1).toDouble()),
painter: MessageCard(),
)*/

class MessageCard extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width,size.height*0.9025391);
    path_0.cubicTo(size.width,size.height*0.9035156,size.width*0.9998047,size.height*0.9039063,size.width*0.9996094,size.height*0.9046875);
    path_0.cubicTo(size.width*0.9994141,size.height*0.9056641,size.width*0.9990234,size.height*0.9066406,size.width*0.9988281,size.height*0.9076172);
    path_0.cubicTo(size.width*0.9968750,size.height*0.9128906,size.width*0.9941406,size.height*0.9162109,size.width*0.9900391,size.height*0.9167969);
    path_0.cubicTo(size.width*0.9888672,size.height*0.9169922,size.width*0.9876953,size.height*0.9169922,size.width*0.9863281,size.height*0.9169922);
    path_0.cubicTo(size.width*0.8406250,size.height*0.9169922,size.width*0.6949219,size.height*0.9169922,size.width*0.5490234,size.height*0.9169922);
    path_0.cubicTo(size.width*0.5480469,size.height*0.9169922,size.width*0.5470703,size.height*0.9166016,size.width*0.5460938,size.height*0.9173828);
    path_0.cubicTo(size.width*0.5453125,size.height*0.9179688,size.width*0.5449219,size.height*0.9189453,size.width*0.5443359,size.height*0.9199219);
    path_0.cubicTo(size.width*0.5285156,size.height*0.9458984,size.width*0.5128906,size.height*0.9718750,size.width*0.4970703,size.height*0.9976563);
    path_0.cubicTo(size.width*0.4964844,size.height*0.9984375,size.width*0.4960938,size.height*0.9994141,size.width*0.4955078,size.height*1.000195);
    path_0.cubicTo(size.width*0.4945313,size.height*0.9996094,size.width*0.4939453,size.height*0.9984375,size.width*0.4933594,size.height*0.9974609);
    path_0.cubicTo(size.width*0.4765625,size.height*0.9714844,size.width*0.4599609,size.height*0.9455078,size.width*0.4431641,size.height*0.9195313);
    path_0.cubicTo(size.width*0.4419922,size.height*0.9177734,size.width*0.4410156,size.height*0.9169922,size.width*0.4392578,size.height*0.9169922);
    path_0.cubicTo(size.width*0.3910156,size.height*0.9169922,size.width*0.3427734,size.height*0.9169922,size.width*0.2945313,size.height*0.9169922);
    path_0.cubicTo(size.width*0.2310547,size.height*0.9169922,size.width*0.1675781,size.height*0.9169922,size.width*0.1041016,size.height*0.9167969);
    path_0.cubicTo(size.width*0.07343750,size.height*0.9167969,size.width*0.04277344,size.height*0.9167969,size.width*0.01210938,size.height*0.9167969);
    path_0.cubicTo(size.width*0.01074219,size.height*0.9167969,size.width*0.009179688,size.height*0.9167969,size.width*0.007812500,size.height*0.9162109);
    path_0.cubicTo(size.width*0.002734375,size.height*0.9140625,size.width*0.0001953125,size.height*0.9083984,size.width*-0.0003906250,size.height*0.9007813);
    path_0.cubicTo(size.width*-0.0003906250,size.height*0.8996094,size.width*-0.0003906250,size.height*0.8984375,size.width*-0.0003906250,size.height*0.8972656);
    path_0.cubicTo(0,size.height*0.6046875,0,size.height*0.3121094,0,size.height*0.01972656);
    path_0.cubicTo(0,size.height*0.01777344,0,size.height*0.01582031,size.width*0.0001953125,size.height*0.01386719);
    path_0.cubicTo(size.width*0.001367187,size.height*0.005664062,size.width*0.005468750,size.height*0.0001953125,size.width*0.01093750,size.height*0.0001953125);
    path_0.cubicTo(size.width*0.01171875,0,size.width*0.01250000,0,size.width*0.01328125,0);
    path_0.cubicTo(size.width*0.3376953,0,size.width*0.6621094,0,size.width*0.9867187,0);
    path_0.cubicTo(size.width*0.9880859,0,size.width*0.9896484,size.height*-0.0001953125,size.width*0.9910156,size.height*0.0001953125);
    path_0.cubicTo(size.width*0.9951172,size.height*0.001562500,size.width*0.9978516,size.height*0.005273438,size.width*0.9994141,size.height*0.01132812);
    path_0.cubicTo(size.width*0.9996094,size.height*0.01210938,size.width*0.9998047,size.height*0.01289062,size.width,size.height*0.01386719);
    path_0.cubicTo(size.width,size.height*0.01679687,size.width,size.height*0.01992187,size.width,size.height*0.02285156);
    path_0.cubicTo(size.width,size.height*0.3103516,size.width,size.height*0.5980469,size.width,size.height*0.8855469);
    path_0.cubicTo(size.width,size.height*0.8912109,size.width,size.height*0.8968750,size.width,size.height*0.9025391);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff333333).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}