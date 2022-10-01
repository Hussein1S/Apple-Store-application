import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/product_image.dart';
import 'package:store_app/models/products.dart';
import 'colors.dart';


class DetailsBody extends StatelessWidget {
  final Products? product ;

  const DetailsBody({Key? key,  this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),),
          ),
          child: Column(
            children: [
              ProductImage(size: size,
                image: product!.image,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(size: size, isSelected: true,
                      fillColor: kTextLightColor,),
                    ColorDot(size: size, isSelected: false,
                      fillColor: Colors.blue,),
                    ColorDot(size: size, isSelected: false,
                      fillColor: Colors.red,),

                  ],
                ),
              ),
               Text(product!.title,
              style: TextStyle(
                fontSize: 20.0,
              ),),
               Text('Price \$ ${product!.price}',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
                color: kSecondaryColor
              ),),
              const SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2,
          horizontal: kDefaultPadding / 1.5),
          child: Text(product!.descreption,style: TextStyle(
            fontSize: 19.0,
            color: Colors.white,
          ),),
        )
      ],
    );
  }
}
