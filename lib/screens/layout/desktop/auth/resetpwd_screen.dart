
import 'package:budget_buddy/screens/layout/desktop/auth/widget/form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widget/form_button.dart';
import 'widget/form_title.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), 
        color: Colors.white, 
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3))],
      ),
       child:  Padding(
        padding: const EdgeInsets.all(25.0),
        child: SizedBox(
          height: 200, 
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FormTitle(
                title: 'Reset Password',
              ),
               const SizedBox(height: 5,), 
          const SizedBox(
            width: 100,
            child: Divider(color: Colors.green,    // Custom color
              thickness: 2.0,        // Thickness of the line
              indent: 5.0,          // Left spacing
              //endIndent: 4.0
              ),
          ), 
          const SizedBox(height: 20,), 
              const SizedBox(height: 5,), 

              // Form 
              Form(child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppFormField(formtext: 'Email',
                  icon: Iconsax.message,), 
                  const SizedBox(height: 15,), 
                  FormButton(buttontext: 'Send Reset Link', onTap: (){}), 

                ],
              ))
   ] )))); 
  }
}