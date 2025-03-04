
import 'package:flutter/material.dart';
import 'package:port_folio/about_me.dart';
import 'package:port_folio/app_colors.dart';
import 'package:port_folio/app_text_styles.dart';
import 'package:port_folio/contect.dart';
import 'package:port_folio/footer_class.dart';
import 'package:port_folio/home.dart';
import 'package:port_folio/my_pordfolio.dart';
import 'package:port_folio/my_services.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
final ItemScrollController _itemScrollController = ItemScrollController();
final onMenuHover = Matrix4.identity()..scale(1.0);
  
    final menuitems = <String>[
    "Home",
    "About",
    "service",
    "Portfolio",
    "Contact",
  ];
  var menuindex=0;
  

  final screensList = <Widget>[
      HomePage(),
      AboutMe(),
      MyServices(),
      MyPordfolio(),
      Contect(),
      FooterClass()
    ];

  void ScrollTo({ required int index}){
    _itemScrollController.scrollTo(
      index: index,
      duration: Duration(seconds: 2),
      curve: Curves.fastLinearToSlowEaseIn).whenComplete(() {
        setState(() {
          menuindex =index;
        });
      });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 90,
        titleSpacing: 40,
        elevation: 0,
        title: LayoutBuilder
        (builder:( context,constraints){
          if (constraints.maxHeight<768){
            return Row(
            crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Portfolio"),
                Spacer(),
                IconButton(onPressed: (){

                }, icon: Icon(Icons.menu_sharp,
                size: 32,
                color: AppColors.white,))

              ],
            );
          }else{
            return Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Portfolio"),
                Spacer(),
                SizedBox(
                  height: 30,
                  child: ListView.separated(
                    itemCount: menuitems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder:(context, child) => 
                   SizedBox(width:8),
                   itemBuilder:(context, index) {
                     return InkWell(
                      onTap: (){
                        ScrollTo(index: index);
                      },
                      borderRadius: BorderRadius.circular(100),
                      onHover: (value) {
                        setState(() {
                          if(value){
                             menuindex = index;

                          } else{
                            menuindex = 0;
                          }
                       
                        });
                      },
                      child: buildNavbarAnimatedContainer(
                        index, menuindex == index ? true : false, menuitems),
                     );
                   },
                    ),
                )
                
              ],

            );
          }
        }
        )


      ),
      body: ScrollablePositionedList.builder(
        itemCount: screensList.length,
        itemBuilder: (context,index){
          return screensList[index];
        },
        ),
    );
  }

  AnimatedContainer buildNavbarAnimatedContainer(int index, bool hover, List<String> menuitems) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 80 : 75,
      duration: Duration(milliseconds: 200),
      transform: hover ? Matrix4.identity() : null,
      child: Text(
        menuitems[index],
        style: AppTextStyles.heatertextStyle().copyWith(
          color: hover ? AppColors.themecolor : AppColors.white,
        ),
      ),
    );
  }
}