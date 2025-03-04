import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:port_folio/app_button.dart';
import 'package:port_folio/app_colors.dart';
import 'package:port_folio/app_text_styles.dart';

class Contect extends StatefulWidget {
  const Contect({super.key});

  @override
  State<Contect> createState() => _ContectState();
}

class _ContectState extends State<Contect> {
  @override
  Widget build(BuildContext context) {
    final Size size =MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      child:   Padding(
        padding: EdgeInsets.symmetric(vertical: 30,horizontal: size.width*0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
               mainAxisSize: MainAxisSize.min,
                  children: [
                  
                   FadeInDown(
                      duration: Duration(milliseconds: 1000),
                      child: RichText(
                        text: TextSpan(
                          text: 'Contect ',
                          style: AppTextStyles.headingStyles(fontSize: 36),
                          children: [
                            TextSpan(
                              text: 'Me',
                              style: AppTextStyles.headingStyles(fontSize: 36),
                            )
                          ]
                        )
                      )
                   ),
                   SizedBox(height: 40,),
                   Row(
                     children: [
                       Expanded(
                         child: Material(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                         
                          elevation: 8,
                           child: TextField(
                            style: AppTextStyles.normalStyles(color: AppColors.bgColor),
                            decoration: inputdecoration(hindtext: "Full Name"),
                                           ),
                         ),
                       ),
                     
                   
                   SizedBox(width: 20,),
                  
                     Expanded(
                       child: Material(
                        borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                        elevation: 8,
                         child: TextField(
                            style: AppTextStyles.normalStyles(color: AppColors.bgColor),
                          decoration: inputdecoration(hindtext: "Email Address"),
                                         ),
                                         ),
                     ),]
                    ),
                    SizedBox(height: 10,),
                      Row(
                     children: [
                       Expanded(
                         child: Material(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          elevation: 8,
                           child: TextField(
                             style: AppTextStyles.normalStyles(color: AppColors.bgColor),
                            decoration: inputdecoration(hindtext: "Mobile Number"),
                                           ),
                         ),
                       ),
                    
                   SizedBox(width: 20,),
                    
                           Expanded(
                             child: Material(
                             borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent,
                             elevation: 8,
                             child: TextField(
                               style: AppTextStyles.normalStyles(color: AppColors.bgColor),
                              decoration: inputdecoration(hindtext: "Subject"),
                                             ),
                                             ),
                           ),
                        
                      ],
                    ),
                    SizedBox(height: 10,),
                         Expanded(
                           child: Material(
                                              borderRadius: BorderRadius.circular(10),
                                               color: Colors.transparent,
                                             
                                              elevation: 8,
                                              
                                               child: TextField(
                                                maxLines: 12,
                                                 style: AppTextStyles.normalStyles(color: AppColors.bgColor),
                                                decoration: inputdecoration(hindtext: "Your Message",),
                                       ),
                                             ),
                         ),
                         SizedBox(height: 40,),
                         AppButtons().buildmaterialbutton(buttonname: "Send Message ",onTap: (){})
                       ],
                     ),
                
              ),
      
          );
        
      }

  InputDecoration inputdecoration({required String hindtext}) {
    return InputDecoration(
                    hintText: hindtext,
                    hintStyle: AppTextStyles.comfortaaStyles(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    filled: true,
                    focusColor: Colors.grey,
                    contentPadding: 
                    EdgeInsets.symmetric(horizontal: 20,vertical: 12)
                  );
  }
}               
  