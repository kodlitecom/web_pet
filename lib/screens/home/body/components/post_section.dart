// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../model/model.dart';

class PostSection extends StatelessWidget {
  const PostSection({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2,
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.image!,
              height: 270,
              width: 270,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Wrap(
              children: [
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Text(
              product.title!,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: kDefaultPadding / 4,
            ),
            Text(
              product.description!,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
