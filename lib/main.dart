import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens/layout/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360, 690), // Base size for calculations
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        (
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Expense Tracker',
        theme: ThemeData(
          
         // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
         colorScheme: ColorScheme.light(
          surface: Colors.grey.shade100, // background
          onSurface: Colors.black,  // onBackground
          primary: const Color(0xff00b2e7), 
          secondary: const Color(0xffe064f7), 
          tertiary: const Color(0x0fff8d6c), 
          outline: Colors.grey, 
         ),
          useMaterial3: true,
        ),
        home: const Layout(), 
      
      ),
    );
      }
    );
  }, 
    );
}
}