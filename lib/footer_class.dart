import 'package:flutter/material.dart';
import 'package:port_folio/app_colors.dart';

class FooterClass extends StatefulWidget {
  const FooterClass({super.key});

  @override
  State<FooterClass> createState() => _FooterClassState();
}

class _FooterClassState extends State<FooterClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: AppColors.bgColor2,
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: InkWell(onTap: (){},
          child: Container(
            height: 30,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.themecolor
            ),
            child: Icon(Icons.arrow_upward,
            size: 25,
            color: Colors.black,),
          ),
        ),
      ),

    );
  }
}