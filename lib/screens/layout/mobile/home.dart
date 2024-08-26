import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: const Text('Budget Buddy', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),)
          ), 
          SizedBox(
            width: double.infinity, 
            height: 300.h,
            child: Image.asset(
           'assets/images/not_found.jpg'),
            ),
            SizedBox(height: 50.h,), 
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Budget Buddy is currently not available on Mobile View. Kindly install it on tablet or visit the MS Store for Desktop version', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
            ), 
            const SizedBox(height: 30,), 
            const ButtonDownload(), 
           
          

      
        ],
      )
    );
  }
}

class ButtonDownload extends StatelessWidget {
  const ButtonDownload({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(color: Colors.green, borderRadius: BorderRadius.all(Radius.circular(10))),
        width: 200, height: 40.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        SizedBox(
          width: 25, height: 25,
          child: Image.asset('assets/icons/windows_store.png')),
        const SizedBox(width: 10,), 
        const Text('Desktop Version', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
