import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:port_folio/app_assets.dart';
import 'package:port_folio/app_button.dart';
import 'package:port_folio/app_colors.dart';
import 'package:port_folio/app_text_styles.dart';
import 'package:port_folio/helper_class.dart';

class AboutMe extends StatefulWidget {
  const AboutMe ({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: HelperClass(
        paddingWidth: 16.0,
        bgColor: AppColors.bgColor,
        mobile: 
            Column(
              children: [
                 Expanded(child:buildAboutme(size) ),
               
              ]
            ),
          tablet: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(child:buildAboutme(size) ),
               
            ],
          ),
          desktop: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(child:buildAboutme(size) ),
               

            ],
          ),
         
      ),
    );
  }

  Container buildAboutme(Size size) {
    return Container(
    height: size.height,
    width: size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(topRight: Radius.elliptical(500, 400),bottomLeft: Radius.elliptical(400, 500)),
      boxShadow: [
        BoxShadow(
          color: AppColors.bgColor,
          blurRadius: 10,
          spreadRadius: 10,
          offset: Offset(5, 5)
        )
      ],
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          AppColors.bgColor,
          AppColors.bgColor2,
          AppColors.bgColor
        ]
      )
    ),
    
    alignment: Alignment.center,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      
      children: [
        Image.asset(AppAssets.profile,
        width: 360,
        height: 390,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
            
             FadeInRight(
                duration: Duration(milliseconds: 1000),
                child: RichText(
                  text: TextSpan(
                    text: 'About ',
                    style: AppTextStyles.headingStyles(fontSize: 36),
                    children: [
                      TextSpan(
                        text: 'Me',
                        style: AppTextStyles.headingStyles(fontSize: 36),
                      )
                    ]
                  ),
                ),
             ),
            
             SizedBox(height: 20,),
             Text("Flutter Developer!", style: AppTextStyles.monteseratstyle(color: Colors.white, fontSize: 24),
             ),
             Text("To pursue a career as a Flutter developer in Chennai, focus on enhancing your skills through personal projects, crafting a resume that highlights your proficiency in Dart and Flutter, and exploring entry-level opportunities at local companies such as Sri Hema Infotech and ECBEE Innovations Pvt Ltd. Additionally, consider networking with other developers in the area and attending local tech events to expand your professional connections and learn about new opportunities in the field. Good luck!",
              
              style: AppTextStyles.normalStyles(color: Colors.white)
             ),
             SizedBox(height: 15,),
             AppButtons().buildmaterialbutton(onTap: (){},
             buttonname:"Read MOre",)
              
             
          
            ],
          ),
        )
      ],
    ),
  );
  }
}