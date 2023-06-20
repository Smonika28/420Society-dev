
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class CustomElevatedButton extends StatelessWidget {
  final Color color;
  void Function()? onTap;
  final String title;
   final double? height;
   final double? width;
   final TextStyle? textStyle;
   final double borderRadius;
   CustomElevatedButton({super.key, required  this.onTap, required this.title , this.height, this.width, this.color = Colors.white,this.textStyle,this.borderRadius = 10});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                  minimumSize:
                      Size(width??MediaQuery.of(context).size.width * 0.9, height??50),
                      backgroundColor: color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  )),
              child:Text(title,style:  textStyle??const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),),
            );
  }
}