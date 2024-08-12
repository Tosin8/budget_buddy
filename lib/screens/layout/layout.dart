import 'package:flutter/material.dart';

import 'desktop/home.dart';
import 'mobile/home.dart';
import 'tablet/home.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 600) {
          return const MobileHome(); 
        } else if (constraints.maxWidth < 1000) {
          return const TabletView(); 
        } else {
          return const DesktopView(); 
        }
      },
    );
  }
}