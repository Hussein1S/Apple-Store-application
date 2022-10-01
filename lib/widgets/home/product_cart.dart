import 'package:flutter/material.dart';
import 'package:store_app/models/products.dart';

import '../../constants.dart';




class ProductCard extends StatelessWidget {
   ProductCard({this.itemIndex, this.product, this.press});
  final int? itemIndex ;
  final Products? product;
  final VoidCallback? press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 200.0,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black26,
                    ),
                  ]),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160.0,
                width: 200.0,
                child: Image.asset(
                  product!.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 136.0,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Text(
                        product!.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    const Spacer(),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Text(
                        product!.subtitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5, // padding 30 px
                          vertical: kDefaultPadding / 5, // padding 5 px
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: kSecondaryColor,
                        ),
                        child:  Text('Price ${product!.price} \$'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
