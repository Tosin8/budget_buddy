// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widget/form_button.dart';
import 'widget/form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 400, 
      width: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Login', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 25),),
          const SizedBox(height: 30,), 
      
          // Form. 
          Form(
            child: Column(
              children: [
                // Email 
               AppFormField(
                     textInputType: TextInputType.visiblePassword,
                                          textInputAction: TextInputAction.next,
                    formtext: 'Email', icon: Iconsax.lock),
    
                // Password 
                const SizedBox(height: 20,),
                  AppFormField(
                     textInputType: TextInputType.visiblePassword,
                                          textInputAction: TextInputAction.next,
                    formtext: 'Password', icon: Iconsax.lock),
                const SizedBox(height: 20,),
                 FormButton(buttontext: 'Login', 
                onTap: (){}),
                
              ],)
          
        
      )]),
    );
  }
}
