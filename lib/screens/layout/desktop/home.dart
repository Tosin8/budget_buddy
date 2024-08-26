import 'package:flutter/material.dart';

import 'auth/login_screen.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold( 
      body: Row(
        children: [

          // Login Account. 
          LoginScreen(),

          // Create Account. 
          SignUpScreen()
        ],
      )
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Column(children: [],));
  }
}

