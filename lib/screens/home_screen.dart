import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/widgets/home/home_body.dart';
import 'package:store_app/widgets/home/home_body.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: HomwAppBar(),
      body: HomeBody(),
    );
  }

  AppBar HomwAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text('Welcome in Apple Store Iraq'),
      centerTitle: false,
      actions: [
        IconButton(onPressed: (){}, icon:Icon(Icons.menu),)
      ],
    );
  }
}
