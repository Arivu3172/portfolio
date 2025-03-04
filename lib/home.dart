import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:port_folio/app_button.dart';
import 'package:port_folio/app_colors.dart';
import 'package:port_folio/app_text_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_folio/helper_class.dart';

import 'package:port_folio/profile_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   double devheight = 0.0;
  double sizewidth = 0.0;

 
  final socialbutton = <IconData>[
    Icons.facebook,
    FontAwesomeIcons.twitter,
    FontAwesomeIcons.linkedin,
    FontAwesomeIcons.instagram,
    FontAwesomeIcons.github,
  ];
 
  var socialBI;
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
                 Expanded(child: buildHomePersonalInfo(size)),
                 SizedBox(height: 25,),
                 Expanded(child: ProfileAnimation())
              ]
            ),
          tablet: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               Expanded(child: buildHomePersonalInfo(size)),
                 SizedBox(height: 25,),
                 Expanded(child: ProfileAnimation())

            ],
          ),
          desktop: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               Expanded(child: buildHomePersonalInfo(size)),
                 SizedBox(height: 25,),
                 Expanded(child: ProfileAnimation())

            ],
          ),
         
      ),
    );
  }

  Column buildHomePersonalInfo(Size size) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
          children: [
            FadeInDown  (
              duration: Duration(milliseconds: 1200),
              child: Text("Hello, It's me",style: AppTextStyles.monteseratstyle(color: Colors.white,fontSize: 24),)),
                           SizedBox(height:15),
            FadeInRight(
              duration: Duration(milliseconds: 1400),
              child: Text("ARIVAZHAGAN A",style: AppTextStyles.headingStyles(fontSize: 36),)),
            SizedBox(height:15),
                           FadeInLeft(
                            duration: Duration(milliseconds: 1400),
                             child: Row(
                                           children: [
                                             Text("And I'am a",style: AppTextStyles.monteseratstyle(color: Colors.white,fontSize: 24),),
                                             SizedBox(width:10),
                                             AnimatedTextKit(
                                              animatedTexts: [
                                                TypewriterAnimatedText(
                                                  'Flutter Developer',
                                                  textStyle: AppTextStyles.monteseratstyle(color: Colors.lightBlueAccent,fontSize: 24),
                                                  speed: const Duration(milliseconds: 100),
                                                ),
                                                TypewriterAnimatedText(
                                                  'Dart Developer',
                                                  textStyle: AppTextStyles.monteseratstyle(color: Colors.lightBlueAccent,fontSize: 24),
                                                  
                                                ),
                                                TypewriterAnimatedText(
                                                  'Android Developer',
                                                  textStyle: AppTextStyles.monteseratstyle(color: Colors.lightBlueAccent,fontSize: 24),
                                                ),
                                                 TypewriterAnimatedText(
                                                  'ios Developer',
                                                  textStyle: AppTextStyles.monteseratstyle(color: Colors.lightBlueAccent,fontSize: 24),
                                                  
                                                ),
                                                 TypewriterAnimatedText(
                                                  'web Developer',
                                                  textStyle: AppTextStyles.monteseratstyle(color: Colors.lightBlueAccent,fontSize: 24),
                                                ),                    
                                              ], 
                                              pause: const Duration(milliseconds: 1000),
                                              displayFullTextOnTap: true,
                                              stopPauseOnTap: true,
                                             
                                           ),
                                             ],
                                           ),
                           ),
              SizedBox(height: 15),
              FadeInDown(
                duration: Duration(microseconds: 1600),
                child: SizedBox(
                  width: size.width * 0.5,
                  child: Text(
                    "A Flutter developer specializes in using the Flutter framework to create cross-platform applications with a single codebase. They design, test, and build applications for mobile, web, and desktop using Dart language, ensuring a seamless, natively compiled experience.",
                    style: AppTextStyles.normalStyles(color: Colors.white).copyWith(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 22),
              FadeInUp(
                duration: Duration(milliseconds: 1500),
                child: SizedBox(
                  height: 48,
                  child: ListView.separated(
                    itemCount: socialbutton.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, child) => SizedBox(width: 8),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            if (value) {
                              socialBI = index;
                            } else {
                              socialBI = null;
                            }
                          });
                        },
                        borderRadius: BorderRadius.circular(550.0),
                        hoverColor: AppColors.themecolor,
                        splashColor: AppColors.lowgreen,
                        child: socialButton(
                          icon: socialbutton[index],
                          hover: socialBI == index ? true : false),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
                    FadeInUp(
                      duration: Duration(milliseconds: 1500),
                      
                        child: AppButtons().buildmaterialbutton(
                          onTap: () {},
                          buttonname: "Download Resume", ),
                      )
          ],
        );
  }

AnimatedContainer buildNavbarAnimatedContainer(int index, bool hover, List<String> menuitems) {
  
  return AnimatedContainer(
    alignment: Alignment.center,
    width: hover ? 80:75,
    duration: Duration(milliseconds: 200),
    transform: hover ? Matrix4.identity().scaled(1.1) : null,
    child: Text(
      menuitems[index],
      style: AppTextStyles.heatertextStyle().copyWith(
        color: hover ? AppColors.themecolor : AppColors.white)
      ),
  );
}

Ink socialButton({required IconData icon, required bool hover}) {
  return Ink(
    width: 45,
    height: 45,
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.themecolor,width: 2.0,),
      color: AppColors.bgColor,
      shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Icon(icon,size: 32, color:hover ? AppColors.bgColor: AppColors.themecolor),
      ),
    );
}
}
      
      
                                