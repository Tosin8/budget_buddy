
import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.buttontext,
    required this.onTap,
  });

final String buttontext; 
final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap : onTap, 
      child: Container(
        height: 45, width: 200,
        decoration: const BoxDecoration(color: Colors.green, 
        borderRadius: BorderRadius.all(Radius.circular(12), 
        )), 
        child: Align(
          child: Text(buttontext),
        ),
      ),
    );
  }
}
