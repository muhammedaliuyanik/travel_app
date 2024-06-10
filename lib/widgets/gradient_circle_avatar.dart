import 'package:flutter/material.dart';

class GradientCircleAvatar extends StatelessWidget {
  final double radius;
  final ImageProvider backgroundImage;

  const GradientCircleAvatar({
    required this.radius,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return   Container(
            margin: const EdgeInsets.all(5.0),
             width: 100.0,
             height: 100.0,
             decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xffFFC107),
                  Color(0xffFF5722),
                ],
              ),
               image: DecorationImage(
                 image: backgroundImage,
                 fit: BoxFit.cover,
               ),
               borderRadius:const BorderRadius.all( Radius.circular(50.0)),
               border: Border.all(
                 color: Colors.red,
                 width: 2.0,
               ),
             ),
           );
  }
}