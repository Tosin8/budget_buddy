import 'package:flutter/material.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(
        child: const Center(
          child: Text('Welcome to Tablet View'),
        ),
      )
    );
  }
}