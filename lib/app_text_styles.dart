import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  static TextStyle heatertextStyle(){
    return GoogleFonts.signikaNegative(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
static TextStyle monteseratstyle({required Color color, required double fontSize}){
    return GoogleFonts.montserrat(
    fontSize: fontSize,
    fontWeight: FontWeight.w800,
    color:color,
   
  );
}
static TextStyle headingStyles({required double fontSize}){
    return GoogleFonts.rubikMoonrocks(
    fontSize: fontSize,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    letterSpacing: 2,
    );
}

static TextStyle mmyservicetext({Color? color}){
    return GoogleFonts.rubikMoonrocks(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: color,
    letterSpacing: 2,
    );
}


static TextStyle normalStyles({required color}){
    return GoogleFonts.mukta(
    fontSize: 16,
    letterSpacing: 1.5,
    fontWeight: FontWeight.w500,
    color:color,
    
    );
}
 static TextStyle comfortaaStyles(){
    return GoogleFonts.comfortaa(
    fontSize: 16,
  
    fontWeight: FontWeight.w800,
    color: AppColors.bgColor,
    
    );
} 
}