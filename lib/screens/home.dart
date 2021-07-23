import 'package:ecommerce/components/home_screen_navbar.dart';
import 'package:ecommerce/model/data.dart';
import 'package:ecommerce/themes/theme.dart';
import 'package:ecommerce/widgets/drawer.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:ecommerce/widgets/product_icon.dart';
import 'package:ecommerce/widgets/title_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Animation<Offset> sidebarAnimation;
  Animation<double> fadeAnimation;
  AnimationController sidebarAnimationController;

  var sidebarHidden = true;

  @override
  void initState() {
    super.initState();
    sidebarAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));

    sidebarAnimation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(
          parent: sidebarAnimationController, curve: Curves.easeInOut),
    );

    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
          parent: sidebarAnimationController, curve: Curves.easeInOut),
    );
  }

  Widget _categoryWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: AppTheme.fullWidth(context),
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: AppData.categoryList
            .map(
              (category) => ProductIcon(
                model: category,
                onSelected: (model) {
                  setState(() {
                    AppData.categoryList.forEach((item) {
                      item.isSelected = false;
                    });
                    model.isSelected = true;
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _productWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: AppTheme.fullWidth(context),
      height: AppTheme.fullWidth(context) * .7,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 4 / 3,
            mainAxisSpacing: 30,
            crossAxisSpacing: 0),
        padding: EdgeInsets.only(left: 20, right: 20),
        scrollDirection: Axis.horizontal,
        children: AppData.productList
            .map(
              (product) => 
                 ProductCard(
                  product: product,
                  onSelected: (model) {
                    setState(() {
                      AppData.productList.forEach((item) {
                        item.isSelected = false;
                      });
                      model.isSelected = true;
                    });
                  },
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _CategoryProductWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: AppTheme.fullWidth(context),
      height: AppTheme.fullHeight(context),
      child: GridView(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 3,
              mainAxisSpacing: 30,
              crossAxisSpacing: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          scrollDirection: Axis.vertical,
          children: [
            // Padding(padding: EdgeInsets.only(right: )),
            Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: [
                BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 12),
                    blurRadius: 16.0)
              ]),
                child: Column(children: [
              Image.asset(
                "asset/image-not-found.png",
              ),
              Container(
                height: 50,
                alignment: AlignmentDirectional.center,
                child:  Text(
                "Energizantes",
                style: kCalloutLabelStyle,
                textAlign: TextAlign.center,
              ) ,
              )
            ])),
           
            Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: [
                BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 12),
                    blurRadius: 16.0)
              ]),
                child: Column(children: [
              Image.asset(
                "asset/image-not-found.png",
              ),
              Container(
                height: 50,
                alignment: AlignmentDirectional.center,
                child:  Text(
                "Promociones",
                style: kCalloutLabelStyle,
                textAlign: TextAlign.center,
              ) ,
              )
            ])),
            Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: [
                BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 12),
                    blurRadius: 16.0)
              ]),
                child: Column(children: [
              Image.asset(
                "asset/image-not-found.png",
              ),
              Container(
                height: 50,
                alignment: AlignmentDirectional.center,
                child:  Text(
                "Nuevos Productos",
                style: kCalloutLabelStyle,
                textAlign: TextAlign.center,
              ) ,
              )
            ])),
            Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: [
                BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 12),
                    blurRadius: 16.0)
              ]),
                child: Column(children: [
              Image.asset(
                "asset/image-not-found.png",
              ),
              Container(
                height: 50,
                alignment: AlignmentDirectional.center,
                child:  Text(
                "Cervezas",
                style: kCalloutLabelStyle,
                textAlign: TextAlign.center,
              ) ,
              )
            ])),
            Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: [
                BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 12),
                    blurRadius: 16.0)
              ]),
                child: Column(children: [
              Image.asset(
                "asset/image-not-found.png",
              ),
              Container(
                height: 50,
                alignment: AlignmentDirectional.center,
                child:  Text(
                "Refrescos y Agua",
                style: kCalloutLabelStyle,
                textAlign: TextAlign.center,
              ) ,
              )
            ])),
            Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: [
                BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 12),
                    blurRadius: 16.0)
              ]),
                child: Column(children: [
              Image.asset(
                "asset/image-not-found.png",
              ),
              Container(
                height: 50,
                alignment: AlignmentDirectional.center,
                child:  Text(
                "Licores y vinos",
                style: kCalloutLabelStyle,
                textAlign: TextAlign.center,
              ) ,
              )
            ])),
            Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: [
                BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 12),
                    blurRadius: 16.0)
              ]),
                child: Column(children: [
              Image.asset(
                "asset/image-not-found.png",
              ),
              Container(
                height: 50,
                alignment: AlignmentDirectional.center,
                child:  Text(
                "Maltas",
                style: kCalloutLabelStyle,
                textAlign: TextAlign.center,
              ) ,
              )
            ])),
            Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: [
                BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 12),
                    blurRadius: 16.0)
              ]),
                child: Column(children: [
              Image.asset(
                "asset/image-not-found.png",
              ),
              Container(
                height: 50,
                alignment: AlignmentDirectional.center,
                child:  Text(
                "Jugos",
                style: kCalloutLabelStyle,
                textAlign: TextAlign.center,
              ) ,
              )
            ])),
          ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
    sidebarAnimationController.dispose();
  }

  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          key: scaffoldkey,
          drawer: ConfigurationDrawer(),
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
                  Container(
                    color: kBackgroundColor,
                    child: Column(
                      children: [
                        HomeScreenNavBar(
                          triggerAnimation: () {
                            setState(() {
                              // sidebarHidden = !sidebarHidden;
                              scaffoldkey.currentState.openDrawer();
                            });
                            // sidebarAnimationController.forward();
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TitleText(
                                // text: isHomePageSelected ? 'Our' : 'Shopping',
                                text: "Nuestros",
                                fontSize: 27,
                                fontWeight: FontWeight.w400,
                              ),
                              TitleText(
                                // text: isHomePageSelected ? 'Products' : 'Cart',
                                text: "Productos",
                                fontSize: 27,
                                fontWeight: FontWeight.w700,
                              ),
                              // SizedBox(
                              //   height: 5.0,
                              // ),
                              // Text(
                              // "24 nuevos productos, pronto",
                              // style: kSubtitleStyle
                              // ),
                            ],
                          ),
                        ),
                        // _categoryWidget(),
                        _productWidget(),
                        _CategoryProductWidget(),
                        // Container(
                        //   color: kBackgroundColor,
                        //   child: Column(
                        //     children: [
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                  ),
                  // ContinueWatchingScreen(),
                  // IgnorePointer(
                  //   ignoring: sidebarHidden,
                  //   child: Stack(
                  //     children: [
                  //       FadeTransition(
                  //         opacity: fadeAnimation,
                  //         child: GestureDetector(
                  //           child: Container(
                  //             color: Color.fromRGBO(36, 38, 41, 0.41),
                  //             height: MediaQuery.of(context).size.height,
                  //             width: MediaQuery.of(context).size.width,
                  //           ),
                  //           onTap: () {
                  //             setState(() {
                  //               sidebarHidden = !sidebarHidden;
                  //             });
                  //             sidebarAnimationController.reverse();
                  //           },
                  //         ),
                  //       ),
                  //       SlideTransition(
                  //         position: sidebarAnimation,
                  //         child: SafeArea(
                  //           child: SidebarScreen(),
                  //           bottom: false,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ]))
              ],
            ),
          )),
    );
  }
}
