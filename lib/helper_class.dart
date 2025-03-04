import 'package:flutter/material.dart';

class HelperClass extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final double paddingWidth;
  final Color bgColor;
  const HelperClass({
    Key? key,
  required this.mobile,
  required this.desktop,
  required this.tablet,
  required this.paddingWidth,
  required this.bgColor
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size =MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
if (constraints. maxWidth < 768) {
     return Container(
      // height: size.height,
width: size.width,
alignment: Alignment.center,
color: bgColor,
padding: EdgeInsets.symmetric(
vertical: size.height * 0.2, horizontal: paddingWidth), // EdgeInsets.
child: mobile, // Define the mobile variable
        
      );
    
  } else if (constraints.maxWidth < 1200){
    return Container(
      width: size.width,
      alignment: Alignment.center,
      color: bgColor,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.25,horizontal: paddingWidth
      ),
      child: tablet,
    );
    
  }else {
    return Container(
      width:size.width,
      alignment: Alignment.center,
      color: bgColor,
      padding:EdgeInsets.symmetric(
        vertical: size.height * 0.25,horizontal: paddingWidth ),
        child: desktop,
    );
  }
 
      },
    );
  }
}