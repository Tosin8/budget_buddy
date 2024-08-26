// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';

class AppFormField extends StatelessWidget {
  AppFormField({
    super.key,
    required this.formtext,
    required this.icon,
    this.textInputAction,
    this.textInputType,
  });

final String formtext; 
final IconData? icon; 

final TextEditingController controller = TextEditingController();
final TextInputAction? textInputAction;
final TextInputType? textInputType;



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
    textInputAction: textInputAction,
     decoration:   InputDecoration(
       prefixIcon: Icon(icon), 
      
       labelText: formtext, 
       labelStyle: const TextStyle(fontSize: 12),
       border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10), 
        ), 
       ),
     ),
     
                    );
  }
}

