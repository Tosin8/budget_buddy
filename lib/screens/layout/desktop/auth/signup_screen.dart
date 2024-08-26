// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'login_screen.dart';
import 'widget/form_button.dart';
import 'widget/form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Column(children: [
       SizedBox(
      height: 500, 
      width: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Create Account', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 15),),
          const SizedBox(height: 10,), 
      
          // Form. 
          Form(
            child: Column(
              children: [

                // Admin No and class. 
                  Row( 
                    children:[ 
                      Expanded(
                        child: AppFormField(
                          textInputType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                                             formtext: 'Admin No',
                                             icon: Iconsax.message
                                       ),
                      ),
                      const SizedBox(width: 20,), 
                                      Expanded(child: AppFormField(
                                         textInputType: TextInputType.name,
                                          textInputAction: TextInputAction.next,
                                        formtext: 'Class', icon: Iconsax.message)), 

               ] ),


                  const SizedBox(height: 10,),
                // Email 
                AppFormField(
                   textInputType: TextInputType.emailAddress,
                                          textInputAction: TextInputAction.next,
                  
                  formtext: 'Email', icon: Iconsax.message), 
                const SizedBox(height: 10,), 
 Row(
   children: [
     Expanded(child: AppFormField(
       textInputType: TextInputType.name,
                                          textInputAction: TextInputAction.next,
      formtext: 'First Name', icon: Iconsax.message)),
      const SizedBox(width: 20,), 
      Expanded(child: AppFormField(
         textInputType: TextInputType.name,
                                          textInputAction: TextInputAction.next,
        formtext: 'Last Name', icon: Iconsax.message)),
   ],
 ),
               
                 
                // Password 
                const SizedBox(height: 10,),
              AppFormField(
                 textInputType: TextInputType.visiblePassword,
                                          textInputAction: TextInputAction.next,
                formtext: 'Password', icon: Iconsax.lock), 
                const SizedBox(height: 10,),
                  AppFormField(
                     textInputType: TextInputType.visiblePassword,
                                          textInputAction: TextInputAction.next,
                    formtext: 'Repeat Password', icon: Iconsax.lock), 
                const SizedBox(height: 10,),
               FormButton(buttontext: 'Create Account', 
                onTap: (){})
                
              ],)
          
        
      )]),
    )
    ],));
  }
}