import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:port_folio/app_button.dart';
import 'package:port_folio/app_colors.dart';
import 'package:port_folio/app_text_styles.dart';
import 'package:port_folio/helper_class.dart';

class MyServices extends StatefulWidget {
  const MyServices ({Key? key}) : super(key: key);
  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false, isGraphic = false, isWeb = false, isHovering = false;

  final onHoverActive = Matrix4.identity()..translate(10.0, -10.0, 10);
  final onHoverRemove = Matrix4.identity()..translate(0.0, 0.0, 0);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body:  HelperClass(
        paddingWidth: 16.0,
        bgColor: AppColors.bgColor,
        mobile: 
         Padding(
           padding: const EdgeInsets.all(20),
           child: Column(
              mainAxisSize: MainAxisSize.min,
                     children: [
                      buildmyservice(size),
                      SizedBox(height: 60),
                      
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           InkWell(
                             onTap: () {
                               setState(() {
                                 isApp = true;
                                 isGraphic = false;
                                 isWeb = false;
                               });
                             },
                                                 
                           child:projectbox(
                               icon: Icons.mobile_friendly,
                               title: 'App Development',
                               description: 'I develop mobile applications for both android and ios platforms',
                               hover: isApp, 
                              ),),
                                      
                                        
                            InkWell(
                         onTap: () {
                           setState(() {
                             isApp = false;
                             isGraphic = true;
                             isWeb = false;
                           });
                         },
                                           
                         child:  projectbox(
                           icon: Icons.graphic_eq,
                           title: 'Graphic Design',
                           description: 'I design logos, banners, flyers, and other graphic designs',
                                        
                           hover: isGraphic, 
                          ),),
                                        
                              InkWell(
                         onTap: () {
                           setState(() {
                             isApp = false;
                             isGraphic = false;
                             isWeb = true;
                           });
                         },
                         child: projectbox(
                           icon: Icons.web,
                           title: 'Web Development',
                           description: 'I develop websites and web applications using flutter and dart',
                           hover: isWeb,
                         ),
                       ),
                       ],
                       ),
                         
                     ],
                   ),
         ),
        tablet: 
        
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisSize: MainAxisSize.min,
                     children: [
                      buildmyservice(size),
                      SizedBox(height: 60),
                      
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           InkWell(
                             onTap: () {
                               setState(() {
                                 isApp = true;
                                 isGraphic = false;
                                 isWeb = false;
                               });
                             },
                                                 
                           child:projectbox(
                               icon: Icons.mobile_friendly,
                               title: 'App Development',
                               description: 'I develop mobile applications for both android and ios platforms',
                               hover: isApp, 
                              ),),
                    
                                        
                                        
                            InkWell(
                         onTap: () {
                           setState(() {
                             isApp = false;
                             isGraphic = true;
                             isWeb = false;
                           });
                         },
                                           
                         child:  projectbox(
                           icon: Icons.graphic_eq,
                           title: 'Graphic Design',
                           description: 'I design logos, banners, flyers, and other graphic designs',
                                        
                           hover: isGraphic, 
                          ),),
                                        
                              InkWell(
                         onTap: () {
                           setState(() {
                             isApp = false;
                             isGraphic = false;
                             isWeb = true;
                           });
                         },
                         child: projectbox(
                           icon: Icons.web,
                           title: 'Web Development',
                           description: 'I develop websites and web applications using flutter and dart',
                           hover: isWeb,
                         ),
                       ),
                       ],
                       ),
                         
                     ],
                   ),
        ),
        desktop: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisSize: MainAxisSize.min,
                     children: [
                      buildmyservice(size),
                      SizedBox(height: 60),
                      
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           InkWell(
                             onTap: () {
                               setState(() {
                                 isApp = true;
                                 isGraphic = false;
                                 isWeb = false;
                               });
                             },
                                                 
                           child:projectbox(
                               icon: Icons.mobile_friendly,
                               title: 'App Development',
                               description: 'I develop mobile applications for both android and ios platforms',
                               hover: isApp, 
                              ),),
                                       
                                        
                            InkWell(
                         onTap: () {
                           setState(() {
                             isApp = false;
                             isGraphic = true;
                             isWeb = false;
                           });
                         },
                                           
                         child:  projectbox(
                           icon: Icons.graphic_eq,
                           title: 'Graphic Design',
                           description: 'I design logos, banners, flyers, and other graphic designs',
                                        
                           hover: isGraphic, 
                          ),),
                                        
                              InkWell(
                         onTap: () {
                           setState(() {
                             isApp = false;
                             isGraphic = false;
                             isWeb = true;
                           });
                         },
                         child: projectbox(
                           icon: Icons.web,
                           title: 'Web Development',
                           description: 'I develop websites and web applications using flutter and dart',
                           hover: isWeb,
                         ),
                       ),
                       ],
                       ),
                         
                     ],
                   ),
        ),
      ),
    );
        
      
   
  }

  Column buildmyservice(Size size) {
    return Column(
               mainAxisSize: MainAxisSize.min,
               children: [
               
                FadeInDown(
                   duration: Duration(milliseconds: 1000),
                   child: RichText(
                     text: TextSpan(
                       text: 'My ',
                       style: AppTextStyles.headingStyles(fontSize: 36).copyWith(color: Colors.yellow),
                       children: [
                         TextSpan(
                           text: 'Certificate',
                           style: AppTextStyles.headingStyles(fontSize: 36),
                         )
                       ]
                     ),
                   ),
              )
               ]
    );
          
      
  }

  AnimatedContainer projectbox({
    required IconData icon,
    required String title,
    required String description,
    required bool hover, }) {
    return AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: hover ? 360 : 350,
                    height: hover ? 390 : 380,
                    transform: hover ? onHoverActive : onHoverRemove,

                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(25)),
                     color: AppColors.bgColor2,
                     border: Border.all(color: AppColors.themecolor, width: 3),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.black.withOpacity(0.5),
                         spreadRadius: 5,
                         blurRadius: 7,
                         offset: Offset(3.0, 4.5),
                       )
                     ]
                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 10,),
                        Icon(icon, size: 50, color: Colors.white,),
                     
                        Text(title,
                        style: AppTextStyles.monteseratstyle(color:Colors.white,fontSize: 24),),
                       
                        Text(description,
                        style:AppTextStyles.normalStyles(color: Colors.white).copyWith(color:Colors.white,fontSize: 16)),
                        SizedBox(height: 30,),
                        AppButtons().buildmaterialbutton(onTap: (){},
                                     buttonname:"Read MOre",)
                                   
                                   
                      ],
                    ),
                  ),
                  
                  );
  }
}