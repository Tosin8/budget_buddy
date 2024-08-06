import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30), 
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white, 
          showSelectedLabels: false, 
          showUnselectedLabels: false, 
          elevation: 3, 
          type: BottomNavigationBarType.fixed,
          items:  const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ), 

            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            )
          ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, 
      floatingActionButton: FloatingActionButton(onPressed: (){}, 
      shape: const CircleBorder(), 
      child: const Icon(CupertinoIcons.add),),
    );
  }
}