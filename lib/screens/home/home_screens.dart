// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:web_dua/constants.dart';

import 'body/web_body.dart';
import 'components/webheader/web_header.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: SafeArea(
                child: Column(
                  children: [
                    WebHeader(),
                    WebBody(),
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
