import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/widgets/details/details_body.dart';
import 'package:store_app/models/products.dart';

class DetailsScreen extends StatelessWidget {
  final Products product ;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsappbar(context),
      body: DetailsBody(product: product,),
    );
  }

  AppBar detailsappbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        child: IconButton(
          icon: const Icon(Icons.arrow_back,),
          color: kPrimaryColor,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      title: const Text('Return',
        style: TextStyle(
          color: Colors.black,
        ),),
    );
  }
}
