import 'package:flutter/material.dart';
import 'package:port_folio/globals/app_colors.dart';
import 'package:port_folio/globals/app_text_styles.dart';
import 'package:port_folio/globals/constants.dart';
import 'package:port_folio/views/home.dart';
import 'package:port_folio/views/my_project.dart';
import 'package:port_folio/views/my_certificate.dart';
import 'package:port_folio/views/about_me.dart';
import 'package:port_folio/views/contect.dart';
import 'package:port_folio/views/footer_class.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';




class MainDashBoard extends StatefulWidget {
  const MainDashBoard({Key? key}) : super(key: key);

  @override
  _MainDashBoardState createState() => _MainDashBoardState();
}

class _MainDashBoardState extends State<MainDashBoard> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener = ScrollOffsetListener.create();
  final onMenuHover = Matrix4.identity()..scale(1.0);
  final menuItems = <String>[
    'Home',
    'About',
    'Certificate',
    'Project',
    'Contact',
  ];

  var menuIndex = 0;

  final screensList = const <Widget>[
    HomePage(),
    AboutMe(),
    MyCertificate(),
    MyProject(),
    ContactUs(),
    FooterClass(),
  ];

  Future scrollTo({required int index}) async {
    _itemScrollController
        .scrollTo(
            index: index,
            duration: const Duration(seconds: 2),
            curve: Curves.fastLinearToSlowEaseIn)
        .whenComplete(() {
      setState(() {
        menuIndex = index;
      });
    });
  }

  final yourScrollController = ScrollController();

  @override
  Widget build(BuildContext context)  {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      
      // backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.black,
       // backgroundColor: AppColors.bgColor,
        toolbarHeight: 90,
        titleSpacing: 40,
        elevation: 0,
        title: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 768) {
              var name = AppTextStyles.Name();
              return Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('ARIVAZHAGAN',style:name,),
                  const Spacer(),
                  PopupMenuButton(
                    icon: Icon(
                      Icons.menu_sharp,
                      size: 32,
                      color: AppColors.white,
                    ),
                    color: Colors.black,
                   // color: AppColors.bgColor2,
                    position: PopupMenuPosition.under,
                    constraints:
                        BoxConstraints.tightFor(width: size.width * 0.9),
                    itemBuilder: (BuildContext context) => menuItems
                        .asMap()
                        .entries
                        .map(
                          (e) => PopupMenuItem(
                            textStyle: AppTextStyles.headerTextStyle(),
                            
                            onTap: () {
                              scrollTo(index: e.key);
                            },
                            child: Text(e.value),
                          ),
                        )
                        .toList(),
                  ),
                ],
              );
            } else {
              var name = AppTextStyles.Name();
              return Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('ARIVAZHAGAN',style:name,),
                  const Spacer(),
                  SizedBox(
                    height: 30,
                    child: ListView.separated(
                      itemCount: menuItems.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, child) =>
                          Constants.sizedBox(width: 8),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            scrollTo(index: index);
                          },
                          borderRadius: BorderRadius.circular(100),
                          onHover: (value) {
                            setState(() {
                              if (value) {
                                menuIndex = index;
                              } else {
                                menuIndex = 0;
                              }
                            });
                          },
                          child: buildNavBarAnimatedContainer(
                              index, menuIndex == index ? true : false),
                        );
                      },
                    ),
                  ),
                  Constants.sizedBox(width: 30),
                ],
              );
            }
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          
          image: DecorationImage(image: AssetImage("wall9.png"),
          fit: BoxFit.cover
          ),
        ),
       child:  Scrollbar(
          trackVisibility: true,
          thumbVisibility: true,
          thickness: 8,
          interactive: true,
          controller: yourScrollController,
          child: ScrollablePositionedList.builder(
            itemCount: screensList.length,
            itemScrollController: _itemScrollController,
            itemPositionsListener: itemPositionsListener,
            scrollOffsetListener: scrollOffsetListener,
            itemBuilder: (context, index) {
              return screensList[index];
            },
          ),
        ),
      )
    );
  }

  AnimatedContainer buildNavBarAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 80 : 75,
      duration: const Duration(milliseconds: 200),
      transform: hover ? onMenuHover : null,
      child: Text(
        menuItems[index],
        style: AppTextStyles.headerTextStyle(
            color: hover ? AppColors.themeColor : AppColors.white),
      ),
    );
  }
}