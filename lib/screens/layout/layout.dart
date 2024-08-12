import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 600) {
          return MobileView(); 
        } else if (constraints.maxWidth < 1200) {
          return TabletView(); 
        } else {
          return DesktopView(); 
        }
      },
    );
  }
}