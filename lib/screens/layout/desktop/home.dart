import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'auth/login_screen.dart';
import 'auth/signup_screen.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/app_bkg.jpg'), 
          fit: BoxFit.cover, opacity: 0.3),
        ),
        child: const Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
          
            
            
            children: [
              SizedBox(height: 40,), 
              // Text App. 
              Text('Budget Buddy', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 25),), 
          
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Row(
                  children: [
                
                    // Login Account. 
                    LoginScreen(),
                  VerticalDivider(
                color: Colors.green, // Custom color
                thickness: 2.0,      // Thickness of the line
                width: 40.0,         // Width including the space around the line
                indent: 10.0,        // Top spacing
                endIndent: 10.0,     // Bottom spacing
              ),  
                
                    // Create Account. 
                    SignUpScreen()
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
