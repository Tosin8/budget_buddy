// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:budget_buddy/screens/layout/desktop/auth/widget/form_title.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widget/form_button.dart';
import 'widget/form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(  borderRadius: BorderRadius.circular(12), 
        color: Colors.white, 
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3))],),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
           SizedBox(
          height: 450, 
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const FormTitle(title: 'Create Account'), 
              const SizedBox(height: 6,), 
           const SizedBox(
            width: 100,
            child: Divider(color: Colors.green,    // Custom color
              thickness: 2.0,        // Thickness of the line
              indent: 5.0,          // Left spacing
              //endIndent: 4.0
              ),
          ), 
          const SizedBox(height: 20,), 
              // Form. 
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
          formtext: 'First Name', icon: Icons.person)),
          const SizedBox(width: 20,), 
          Expanded(child: AppFormField(
             textInputType: TextInputType.name,
                                              textInputAction: TextInputAction.next,
            formtext: 'Last Name', icon: Icons.person)),
           ],
         ),
                   
                     
                    // Password 
                    const SizedBox(height: 10,),
                  AppFormField(
                     textInputType: TextInputType.visiblePassword,
                                              textInputAction: TextInputAction.next,
                    formtext: 'Password', icon: Iconsax.lock, ), 
                    const SizedBox(height: 10,),
                      AppFormField(
                         textInputType: TextInputType.visiblePassword,
                                              textInputAction: TextInputAction.next,
                        formtext: 'Repeat Password', icon: Iconsax.lock), 
                    const SizedBox(height:20,),
                   FormButton(buttontext: 'Create Account', 
                    onTap: (){})
                    
                  ],)
              
            
          )]),
        )
        ],),
      ),
    );
  }
}