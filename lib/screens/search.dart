import 'package:ecommerce/components/searchfield_widget.dart';
import 'package:ecommerce/screens/login.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Widget _categorySearchProducts() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            print("a");
          },
          child: Column(children: [
             Divider(
              thickness: 1,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'asset/image-not-found.png',
                    fit: BoxFit.cover,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    "Pepsi",
                    style: kTitle1Style,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'asset/image-not-found.png',
                    fit: BoxFit.cover,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    "Coca Cola",
                    style: kTitle1Style,
                  ),
                ],
              ),
            ),
          ]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: kBackgroundColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: kPrimaryLabelColor)),
                  SearchFieldWidget(),
                  Icon(Icons.shopping_cart, color: kPrimaryLabelColor),
                ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              // height: 880,
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: _categorySearchProducts(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
