import 'package:flutter/material.dart';
import 'package:port_folio/app_colors.dart';
import 'package:port_folio/app_text_styles.dart';

class AppButtons {
   buildmaterialbutton({
    required VoidCallback onTap,
    required String buttonname,  }) {
    return  MaterialButton(
                                  onPressed: onTap,
                                    color: AppColors.themecolor,
                                    splashColor: AppColors.lowgreen,
                                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(color: AppColors.themecolor,width: 2)
                                    ),
                                     hoverColor: AppColors.aqua,
                                     elevation: 6,
                                         child: Text(buttonname,
                                         style: AppTextStyles.monteseratstyle(color:AppColors.bgColor,fontSize: 24),),
                                    
                              );
}
}