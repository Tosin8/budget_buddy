import 'package:flutter/material.dart';

class FormTitle extends StatelessWidget {
  const FormTitle({
    super.key,
    required this.title,
  });

final String title; 
  @override
  Widget build(BuildContext context) {
    return  Text(title, style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 15),);
  }
}
