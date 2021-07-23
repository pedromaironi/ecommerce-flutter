import 'package:ecommerce/components/home_button.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/model/data.dart';
import 'package:ecommerce/model/product.dart';
import 'package:ecommerce/themes/light_color.dart';
import 'package:ecommerce/themes/theme.dart';
import 'package:ecommerce/widgets/drawer.dart';
import 'package:ecommerce/widgets/title_text.dart';
import 'package:flutter/material.dart';

class ShoppingCartPage extends StatefulWidget {
  @override
  _SoppingCartState createState() => _SoppingCartState();
}

class _SoppingCartState extends State<ShoppingCartPage>
    with TickerProviderStateMixin {
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

  Widget _cartItems() {
    return Container(
        color: kBackgroundColor,
        child:
            Column(children: AppData.cartList.map((x) => _item(x)).toList()));
  }

  Widget _item(Product model) {
    return Container(
      height: 80,
      child: Row(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.2,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 70,
                    width: 70,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            decoration: BoxDecoration(
                                color: kBackgroundColor,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Image.asset(model.image),
                )
              ],
            ),
          ),
          Expanded(
              child: ListTile(
                  title: TitleText(
                    text: model.name,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      TitleText(
                        text: '\$ ',
                        color: LightColor.red,
                        fontSize: 12,
                      ),
                      TitleText(
                        text: model.price.toString(),
                        fontSize: 14,
                      ),
                    ],
                  ),
                  trailing: Container(
                    width: 35,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: TitleText(
                      text: 'x${model.id}',
                      fontSize: 12,
                    ),
                  )))
        ],
      ),
    );
  }

  Widget _price() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        TitleText(
          text: '${AppData.cartList.length} Items',
          color: kBackgroundColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        TitleText(
          text: '\$${getPrice()}',
          fontSize: 18,
        ),
      ],
    );
  }

  Widget _submitButton(BuildContext context) {
    return FlatButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.black,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 12),
          width: AppTheme.fullWidth(context) * .7,
          child: TitleText(
            text: 'Comprar',
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ));
    // return InkWell(
    //                   child: Container(
    //                     child: Text(
    //                       'INICIAR SESIÓN',
    //                       style:
    //                           kCalloutLabelStyle.copyWith(color: Colors.white),
    //                     ),
    //                     alignment: Alignment.center,
    //                     decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(14.0),
    //                         gradient: LinearGradient(colors: [
    //                           Color(0xFF000000),
    //                           Color(0xFF000000),
    //                         ])),
    //                     height: 57.0,
    //                     width: MediaQuery.of(context).size.width * 0.4,
    //                   ),
    //                   onTap: () {
    //                    // ir a pagina
    //                   //  navigateToLogin(context);
    //                     // Navigator.of(context).pushReplacement(

    //                     // MaterialPageRoute<MenuPage>(
    //                     //     builder: (_) =>
    //                     // )
    //                     // );
    //                   },
    //                 )
  }

  double getPrice() {
    double price = 0;
    AppData.cartList.forEach((x) {
      price += x.price * x.id;
    });
    return price;
  }

  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppTheme.fullHeight(context),
      child: Scaffold(
        key: scaffoldkey,
        drawer: ConfigurationDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  color: kBackgroundColor,
                  child: HomeScreenNavBar(
                    triggerAnimation: () {
                      setState(() {
                        scaffoldkey.currentState.openDrawer();
                      });
                    },
                  ),
                ),
                Container(
                  color: kBackgroundColor,
                  height: AppTheme.fullHeight(context),
                  child: Column(
                    
                    children: [
                      _cartItems(),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(right:20.0),
                        child: _price(),
                      ),
                      SizedBox(height: 30),
                      _submitButton(context),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
