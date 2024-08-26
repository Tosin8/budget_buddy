import 'package:flutter/material.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: PageView(
        children:  [
          Container(
            decoration: const BoxDecoration(color: Colors.black),
          ), 
Container(
            decoration: const BoxDecoration(color: Colors.green),
          ), Container(
            decoration: const BoxDecoration(color: Colors.pink),
          ), 
        ],
      )
    );
  }
}