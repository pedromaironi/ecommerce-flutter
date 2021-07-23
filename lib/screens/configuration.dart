import 'package:ecommerce/components/home_button.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/themes/theme.dart';
import 'package:ecommerce/widgets/drawer.dart';
import 'package:flutter/material.dart';

class configurationScreen extends StatefulWidget {
  configurationScreen({Key key}) : super(key: key);

  @override
  _configurationScreenState createState() => _configurationScreenState();
}

GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

class _configurationScreenState extends State<configurationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      drawer: ConfigurationDrawer(),
      body: Container(
        width: AppTheme.fullWidth(context),
        color: kBackgroundColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 8.0, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding: const EdgeInsets.only(left:20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mi cuenta",
                        style: kTitle1Style,
                      ),
                      Divider(
                        height: 20,
                        thickness: 1,
                      ),
                      SizedBox(),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Cambiar contraseña",
                          style: kSubtitleStyle,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Sobre nosotros",
                        style: kTitle1Style,
                      ),
                      Divider(
                        height: 20,
                        thickness: 1,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Términos y condiciones",
                          style: kSubtitleStyle,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Política de privacidad",
                          style: kSubtitleStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
