import 'package:flutter/material.dart';

class ButtonCustoms extends StatelessWidget {
  const ButtonCustoms({super.key,this.onTap,this.boxShadow, this.color, this.fontColor, this.num,this.width,this.height,this.margin});
  final void Function()? onTap;
  final Color? color;
 final  Color? fontColor;
 final String? num;
 final double? width;
 final double? height;
  final List<BoxShadow>? boxShadow;
 final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        margin: margin??EdgeInsets.only(top: 0),
        width: width?? 70,
        height: height??70,
        decoration: BoxDecoration(
          boxShadow: boxShadow,
          color:color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
           num!,
            style: TextStyle(
              fontSize: 32,
              color: fontColor,
            ),
          ),
        ),
      ),
    );
  }
}
