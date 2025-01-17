import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/models/note_view_model.dart';
import 'package:notes/widgets/color_list_view.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const  AddNoteForm({super.key});

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
          const SizedBox(height: 40,),
          const ColorListView(),
          const SizedBox(height: 40,),
          BlocBuilder<AddNoteCubit, AddNoteState>(
  builder: (context, state) {
    return CustomButton(
            isLoading: state is AddNoteLoading?true:false,
            onTap: onTap,
          );
  },
),
          const SizedBox(height: 32,),
        ],
      ),
    );
  }
  void Function()?onTap(){
    if(formKey.currentState!.validate()){
      formKey.currentState!.save();
      var date = DateTime.now();
      var formatedDate=DateFormat("dd-mm-yyy").format(date);
      var addNote=NoteViewModel(title: title!, subTitle: subTitle!, date:  formatedDate, color: Colors.blue.value);
      BlocProvider.of<AddNoteCubit>(context).addNote(addNote);
    }
    else{
      autoValidateMode=AutovalidateMode.always;
      setState(() {
      });
    }
    return null;
  }
}

