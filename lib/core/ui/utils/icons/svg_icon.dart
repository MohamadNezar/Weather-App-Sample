
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
final String iconUrl;
final Color? color;
final double height;
final double width;
SvgIcon({required this.iconUrl,this.color=Colors.white,required this.height,required this.width});
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(iconUrl,color:color,height: height ,width:width ,);
  }
}
