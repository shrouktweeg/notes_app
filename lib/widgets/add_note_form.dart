import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title,subTitle;
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  final GlobalKey<FormState>formKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  Form(
      autovalidateMode: autoValidateMode,
      key:formKey,
      child:  Column(
        children: [
          const SizedBox(height: 32,),
          CustomTextFormField(hint: 'Title',onSaved: (value){
            title=value;
          },),
          const SizedBox(height: 20,),
          CustomTextFormField(hint: 'Content',maxLines: 5,onSaved: (value){
            subTitle=value;
          },),
          const SizedBox(height: 64,),
          CustomButton(

            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }
              else{
                autoValidateMode=AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
          const SizedBox(height: 32,),
        ],
      ),
    );
  }
}