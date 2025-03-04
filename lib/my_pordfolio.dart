import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:port_folio/app_colors.dart';
import 'package:port_folio/app_text_styles.dart';

class MyPordfolio extends StatefulWidget {
  const MyPordfolio({super.key});

  @override
  State<MyPordfolio> createState() => _MyPordfolioState();
}

class _MyPordfolioState extends State<MyPordfolio> {
final  onHovereffect =Matrix4.identity()..scale(1.0);
  List images =<String> [
    'assets/dev1.png',
     'assets/dev2.png',
      'assets/dev3.png',
        'assets/dev4.png',
          'assets/dev5.png',
          'assets/dev6.png',
    

  ];


  var hoverindex;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1,vertical: 30),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInDown(
            duration: Duration(milliseconds: 1000),
            child: RichText(
              text: TextSpan(
                text: 'Latest ',
                style: AppTextStyles.headingStyles(fontSize:30),
                children: [
                  TextSpan(
                    text: 'Projects',
                    style: AppTextStyles.headingStyles(fontSize: 30)
                  )
                ]
                )
                )
                ),
                SizedBox(height: 40,),

                GridView.builder(
                  itemCount: images.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 24,
                    mainAxisExtent: 280,
                ),
                itemBuilder: (context, index) {
                  var image = images[index];
                  return FadeInUpBig(
                    duration: Duration(milliseconds:1500 ),
                    child: InkWell(
                      onTap: () {},
                      onHover: (value) {
                        
                          setState(() {
                            
                        
                          if (value) {
                            hoverindex = index;
                          }else{
                            hoverindex = null;
                          }
                          
                            
                        });
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                           ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:  Image(
                            image: AssetImage(image),
                            fit: BoxFit.cover,
                          )
                          ),
                          Visibility(
                            visible: index==hoverindex,
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              transform: index== hoverindex ? onHovereffect:null,
                              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.themecolor.withOpacity(0.9),
                                     AppColors.themecolor.withOpacity(0.7),
                                      AppColors.themecolor.withOpacity(0.6),
                                       AppColors.themecolor.withOpacity(0.5),
                                        AppColors.themecolor.withOpacity(0.8),
                                  ]
                                )
                                  
                              ),
                              child: Column(
                                children: [
                                  Text("App Development",
                                  style: AppTextStyles.monteseratstyle(color: Colors.black87, fontSize: 20), ),
                                  SizedBox(height: 15,),
                                  Text("To pursue a career as a Flutter developer in Chennai, focus on enhancing your skills through personal projects, crafting a resume that highlights your proficiency in Dart and Flutter, and exploring entry-level opportunities at local  ",
                                  style: AppTextStyles.normalStyles(color: Colors.white).copyWith(color: Colors.black87),
                                  
                                  textAlign: TextAlign.center,),
                                  SizedBox(height: 22,),
                                  CircleAvatar(
                                    maxRadius: 25,
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.share,color: Colors.black87,
                                    size: 20,)
                                  )
                                ],
                              ),
                                        
                            ),
                          )
                                      
                        ]
                      ),
                    )
                  );
                  
                },
                )
        ]
      ),
    );
  }
}