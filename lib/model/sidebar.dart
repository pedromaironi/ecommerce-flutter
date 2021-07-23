import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//! SideBar class

class SidebarItem {

  SidebarItem({this.title, this.background, this.icon});
  String title;
  LinearGradient background;
  Icon icon;

 
}
var sidebarItem = [
  SidebarItem(
    title: "Inicio",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF00AEFF),
        Color(0xFF0076FF),
      ],
    ),
    icon: Icon(
      Platform.isAndroid ? Icons.home : CupertinoIcons.home,
      color: Colors.white,
    ),
  ),
  SidebarItem(
    title: "Buscar",
    background: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFFA7d75), Color(0xFFC23D61)]),
    icon: Icon(
      Platform.isAndroid ? Icons.search : CupertinoIcons.search,
      color: Colors.white,
    ),
  ),
  SidebarItem(
    title: "Mi cuenta",
    background: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFFAD64A), Color(0xFFEA880F)]),
    icon: Icon(
      Platform.isAndroid ? Icons.person : CupertinoIcons.person,
      color: Colors.white,
    ),
  ),
  SidebarItem(
    title: "Configuración",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xFF4E62CC), Color(0xFF202A78)],
    ),
    icon: Icon(
      Platform.isAndroid ? Icons.settings : CupertinoIcons.settings,
      color: Colors.white,
    ),
  ),
];