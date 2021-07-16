

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
 final Widget child;
 final EdgeInsetsGeometry? margin;
 final EdgeInsetsGeometry? padding;
 InfoCard({required this.child,this.margin,this.padding});
  @override
  Widget build(BuildContext context) {
   return Container(
      margin:margin,
      padding:padding,
      width: 0.92.sw,
      decoration: BoxDecoration(
          color: Colors.white12,borderRadius: BorderRadius.all(Radius.circular(10))
      ),
     child: child,
    );}
}
