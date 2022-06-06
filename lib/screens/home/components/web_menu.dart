// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';

class WebMenu extends StatelessWidget {
  const WebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MenuContainer(
          title: "Dogs",
          press: () {},
        ),
        MenuContainer(
          title: "Cats",
          press: () {},
        ),
        MenuContainer(
          title: "Birds",
          press: () {},
        ),
        MenuContainer(
          title: "Fish",
          press: () {},
        ),
      ],
    );
  }
}

class MenuContainer extends StatelessWidget {
  const MenuContainer({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String? title;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        press!;
      },
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding / 2),
        child: Text(
          title!,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
