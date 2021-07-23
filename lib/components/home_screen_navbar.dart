import 'package:ecommerce/components/searchfield_widget.dart';
import 'package:ecommerce/components/sidebar_button.dart';
import 'package:ecommerce/screens/cart.dart';
import 'package:ecommerce/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreenNavBar extends StatelessWidget {
  HomeScreenNavBar({@required this.triggerAnimation});

  final Function triggerAnimation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(triggerAnimation: triggerAnimation,),
          SearchFieldWidget(),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  // builder:(context) => ProfileScreen()
                  builder:(context) => ShoppingCartPage()
                )
              );
            },
            child: Icon(
              Icons.shopping_cart,
              color: kPrimaryLabelColor
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:(context) => ProfileScreen()
                )
              );
            },
            
            child: CircleAvatar(
              radius: 18.0,
              backgroundImage: AssetImage(
                'asset/images/me.png'
              ),
              
            ),
          )
        ],
      ),
    );
  }
}