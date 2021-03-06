import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/home.dart';
import 'package:ecommerce/screens/welcome.dart';
import 'package:ecommerce/services/authservice.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";
  AuthService auth;
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
                        onPressed: () async {
                          navigateToWelcome(context);
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 50),
                  child: Container(
                    height: 80,
                    child: Text(
                      "BIENVENIDO",
                      style: kLargeBiggestTitleStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                    height: 130,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
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
                            child: Column(
                              children: [
                                Padding(
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
                                Divider(
                                  color: Colors.grey[600],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 5.0, right: 16.0, left: 16.0),
                                  child: TextField(
                                    cursorColor: kPrimaryLabelColor,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        icon: Icon(
                                          Icons.lock,
                                          color: Color(0xFF000000),
                                          size: 20.0,
                                        ),
                                        border: InputBorder.none,
                                        hintText: "Contrase??a",
                                        hintStyle: kLoginInputTextStyle),
                                    style: kLoginInputTextStyle.copyWith(
                                        color: Colors.black),
                                    onChanged: (textEntered) {
                                      password = textEntered;
                                      // print(password);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 15.0,
                ),
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        child: Text(
                          'INICIAR SESI??N',
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
                        width: MediaQuery.of(context).size.width * 0.7,
                      ),
                      onTap: () async {
                        try {
                          await _auth.signInWithEmailAndPassword(
                              email: email, password: password);
                          navigateToHome(context);
                        } on FirebaseAuthException catch (err) {
                          print("asdasd");
                          if (err.code == "user-not-found" ||
                              err.code == null) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: (Text(
                                    "Este usuario no existe, por favor registre una nueva cuenta."))));
                          }
                        }
                        //ir a pagina
                      },
                    ),
                  ],
                )
              ],
            )));
  }
}

showAlertDialog(BuildContext context) {
  // Widget okButton = Container(
  //   child: Text(
  //     'INICIAR SESI??N',
  //     style: kCalloutLabelStyle.copyWith(color: Colors.white),
  //   ),
  //   alignment: Alignment.center,
  //   decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(14.0),
  //       gradient: LinearGradient(colors: [
  //         Color(0xFF000000),
  //         Color(0xFF000000),
  //       ])),
  //   height: 57.0,
  //   width: MediaQuery.of(context).size.width * 0.7,
  // );
}

void navigateToWelcome(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => WelcomeScreen(), fullscreenDialog: false),
  );
}

void navigateToHome(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => HomeScreen(), fullscreenDialog: false),
  );
}
