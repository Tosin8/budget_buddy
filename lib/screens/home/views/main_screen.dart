import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea
    (child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0), 
    child: Column(
      children: [
        Container(
          width: 50, 
          height: 50, 
          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.yellow),
        ), 
        Column(
          children: [
            Text('Welcome', 
            style: TextStyle(fontSize: 12, 
            fontWeight: FontWeight.w600, 
            color: Theme.of(context).colorScheme.outline),), 
            Text('John Doe', 
            style: TextStyle(fontSize: 14, 
            fontWeight: FontWeight.w600, 
            color: Theme.of(context).colorScheme.outline),), 
          ],
        )
      ],
    ),
    ),
    
      
    );
  }
}