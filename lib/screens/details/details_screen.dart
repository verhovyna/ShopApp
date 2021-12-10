import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
        onPressed: () => {Navigator.pop(context)},
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 30,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 30,
            )),
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
