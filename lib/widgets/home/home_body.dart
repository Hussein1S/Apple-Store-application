import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/products.dart';
import 'package:store_app/screens/details_screen.dart';
import 'package:store_app/widgets/details/details_body.dart';
import 'package:store_app/widgets/home/product_cart.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70.0),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) =>  ProductCard(
                      itemIndex: index,
                      product: products[index],
                      press: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>
                            DetailsScreen(product: products[index],)));
                      },
                    ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
