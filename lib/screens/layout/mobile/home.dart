import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity, 
            height: 300.h,
            child: Image.asset(
           ' assets/images/not_found.jpg'),
            ),
            SizedBox(height: 30.h,), 
            const Text('Mobile View for Budget Buddy is currently not avaiblabe on Mobile View, Kindly install it on tablet or visit the MS Store for Desktop mode',), 
            SizedBox(height: 40.h,), 
      
        ],
      )
    );
  }
}