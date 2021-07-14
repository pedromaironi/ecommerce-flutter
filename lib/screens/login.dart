import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  // String email;
  // String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 60.0),
              transform: Matrix4.translationValues(0, -75, 0),
              child: Image.asset(
                'asset/logos/logo_login.png',
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 0,
                      right: 0,
                      bottom: 10,
                    ),
                    child: Text(
                      "HAZ CRECER TU NEGOCIO",
                      style: kLargeBiggestTitleStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    "¡Le ayudaremos a hacer crecer su negocio utilizando servicios en línea!",
                    style: kNormalTitleStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  left: 0,
                  right: 0,
                  bottom: 0
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: Container(
                            child: Text(
                              'Iniciar sesión',
                              style:
                                  kCalloutLabelStyle.copyWith(color: Colors.white),
                            ),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
                                gradient: LinearGradient(colors: [
                                  Color(0xFF000000),
                                  Color(0xFF000000),
                                ])),
                            height: 57.0,
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                          onTap: () {
                           // ir a pagina
                            // Navigator.of(context).pushReplacement(

                            // MaterialPageRoute<MenuPage>(
                            //     builder: (_) =>
                            // )
                            // );
                          },
                        ),
                        Padding(padding: EdgeInsets.only(
                          left: 30
                        )),
                        InkWell(
                          child: Container(
                            child: Text(
                              'Registrarse',
                              style:
                                  kCalloutLabelStyle.copyWith(color: Colors.white),
                            ),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
                                gradient: LinearGradient(colors: [
                                  Color(0xFF000000),
                                  Color(0xFF000000),
                                ])),
                            height: 57.0,
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                          onTap: () {
                           //ir a pagina 
                          },
                        ),
                      ],
                    ),
              ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
