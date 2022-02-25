// ignore_for_file: must_be_immutable, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import './Dummy Data.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int cardnumber = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              color: Colors.purple,
              alignment: Alignment.center,
              child: Text(DummyData.product[cardnumber].productName)),
          Stack(
            children: [
              Image.asset(
                DummyData.product[cardnumber].image,
                fit: BoxFit.fill,
              ),
              Positioned(
                  top: 5,
                  right: 5,
                  child: Text('${DummyData.product[cardnumber].price}')),
              Positioned(
                bottom: 5,
                left: 5,
                child: Icon(
                  Icons.favorite_sharp,
                  color: Colors.grey,
                  // color: fav == true ? Colors.red : Colors.black45,
                  size: 60,
                ),
              )
            ],
          ),
          Container(
              color: Colors.purple,
              alignment: Alignment.center,
              child: Text(DummyData.product[cardnumber].description)),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('home');
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}
