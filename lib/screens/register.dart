import 'package:ecommerce/screens/home.dart';
import 'package:ecommerce/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  String email = "";
  String password = "";
  // By defaut, the checkbox is unchecked and "agree" is "false"
  bool agree = false;

  // This function is triggered when the button is clicked
  // void _doSomething(){
  // Do something
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: kYellowPrimary,
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        onPressed: () {
                          navigateToWelcome(context);
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 30),
                  child: Container(
                    height: 80,
                    child: Text(
                      "REGISTRO",
                      style: kLargeBiggestTitleStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14.0),
                            boxShadow: [
                              BoxShadow(
                                  color: kShadowColor,
                                  offset: Offset(0, 12.0),
                                  blurRadius: 16.0)
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, right: 16.0, left: 16.0),
                          child: TextField(
                            cursorColor: kPrimaryLabelColor,
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.person,
                                  color: Color(0xFF000000),
                                  size: 20,
                                ),
                                border: InputBorder.none,
                                hintText: "Nombre completo",
                                hintStyle: kLoginInputTextStyle),
                            style: kLoginInputTextStyle.copyWith(
                                color: Colors.black),
                            onChanged: (textEntered) {
                              email = textEntered;
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14.0),
                              boxShadow: [
                                BoxShadow(
                                    color: kShadowColor,
                                    offset: Offset(0, 12.0),
                                    blurRadius: 16.0)
                              ]),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 5.0, right: 16.0, left: 16.0),
                            child: TextField(
                              cursorColor: kPrimaryLabelColor,
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.email,
                                    color: Color(0xFF000000),
                                    size: 20,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Correo electronico",
                                  hintStyle: kLoginInputTextStyle),
                              style: kLoginInputTextStyle.copyWith(
                                  color: Colors.black),
                              onChanged: (textEntered) {
                                email = textEntered;
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14.0),
                              boxShadow: [
                                BoxShadow(
                                    color: kShadowColor,
                                    offset: Offset(0, 12.0),
                                    blurRadius: 16.0)
                              ]),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 5.0, right: 16.0, left: 16.0),
                            child: TextField(
                              cursorColor: kPrimaryLabelColor,
                              obscureText: true,
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.lock,
                                    color: Color(0xFF000000),
                                    size: 20,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Contraseña",
                                  hintStyle: kLoginInputTextStyle),
                              style: kLoginInputTextStyle.copyWith(
                                  color: Colors.black),
                              onChanged: (textEntered) {
                                email = textEntered;
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14.0),
                              boxShadow: [
                                BoxShadow(
                                    color: kShadowColor,
                                    offset: Offset(0, 12.0),
                                    blurRadius: 16.0)
                              ]),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 5.0, right: 16.0, left: 16.0),
                            child: TextField(
                              cursorColor: kPrimaryLabelColor,
                              obscureText: true,
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.lock,
                                    color: Color(0xFF000000),
                                    size: 20,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Confirmar contraseña",
                                  hintStyle: kLoginInputTextStyle),
                              style: kLoginInputTextStyle.copyWith(
                                  color: Colors.black),
                              onChanged: (textEntered) {
                                email = textEntered;
                              },
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            value: agree,
                            activeColor: Colors.black,
                            onChanged: (value) {
                              setState(() {
                                agree = value!;
                                print(value);
                              });
                            },
                          ),
                          Expanded(
                            child: Container(
                              height: 30,
                              child: Text("He leido y acepto los Términos y Condiciones de uso del sitio y la politica de privacidad de Datos.",
                              style: kSearchTextStyle,
                              textAlign: TextAlign.start,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 65.0, left: 30.0, right: 30.0),
                  child: InkWell(
                    child: Container(
                      child: Text(
                        'Registrar',
                        style: kCalloutLabelStyle.copyWith(color: Colors.white),
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          gradient: LinearGradient(colors: [
                            Color(0xFF000000),
                            Color(0xFF000000),
                          ])),
                      height: 57.0,
                      width: MediaQuery.of(context).size.width * 0.7,
                    ),
                    onTap: () {
                      //ir a pagina
                    navigateToWelcome(context);
                    },
                  ),
                )
              ],
            )));
  }
}

void navigateToWelcome(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => HomeScreen(), fullscreenDialog: false),
  );
}
