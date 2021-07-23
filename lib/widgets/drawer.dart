import 'dart:io';

import 'package:ecommerce/components/sidebar_row.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/model/sidebar.dart';
import 'package:ecommerce/screens/configuration.dart';
import 'package:ecommerce/screens/home.dart';
import 'package:ecommerce/screens/profile_screen.dart';
import 'package:ecommerce/screens/search.dart';
import 'package:flutter/material.dart';

class ConfigurationDrawer extends StatefulWidget {
  const ConfigurationDrawer({Key key}) : super(key: key);

  @override
  _ConfigurationDrawerState createState() => _ConfigurationDrawerState();
}

class _ConfigurationDrawerState extends State<ConfigurationDrawer> {
  String name;
  String username;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      decoration: BoxDecoration(
        color: kSidebarBackgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(34.0),
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(
        vertical: 35.0,
        horizontal: 20.0,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/me.png'),
                  radius: 21.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pedro Maironi Toribio",
                      style: kHeadlineLabelStyle,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    // Text(
                    //   "License ends on 29 June, 2021",
                    //   style: kSearchPlaceholderStyle,
                    // )
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                      fullscreenDialog: false),
                );
              },
              child: SidebarRow(
                item: sidebarItem[0],
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                      fullscreenDialog: false),
                );
              },
              child: SidebarRow(
                item: sidebarItem[1],
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                      fullscreenDialog: false),
                );
              },
              child: SidebarRow(
                item: sidebarItem[2],
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => configurationScreen(),
                      fullscreenDialog: false),
                );
              },
              child: SidebarRow(
                item: sidebarItem[3],
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Spacer(),
            Row(
              children: [
                Image.asset(
                  'asset/icons/icon-logout.png',
                  width: 17.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Text(
                  "Cerrar sesión",
                  style: kSecondaryCalloutLabelStyle,
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
