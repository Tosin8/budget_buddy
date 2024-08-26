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
        if (constraints.maxWidth < 600) {
          // Mobile view for screens less than 600px.
          return const MobileHome();
        } else if (constraints.maxWidth >= 600 && constraints.maxWidth < 1024) {
          // Tablet view for screens between 600px and 1024px.
          return const TabletView();
        } else if (constraints.maxWidth >= 1024 && constraints.maxWidth < 1440) {
          // Consider screens between 1024px and 1440px as small desktops.
          return const TabletView();
        } else {
          // Desktop view for screens 1440px and above.
          return const DesktopView();
        }
      },
    );
  }
}
