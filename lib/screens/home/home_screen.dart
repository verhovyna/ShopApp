import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              color: kTextColor,
              size: 30,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: kTextColor,
              size: 30,
            )),
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
