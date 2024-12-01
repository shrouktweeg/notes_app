import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class CustomNotesBottomSheet extends StatelessWidget {
  const CustomNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            CustomTextField(hint: 'Title',),
            SizedBox(height: 20,),
            CustomTextField(hint: 'Content',maxLines: 5,),
            SizedBox(height: 64,),
            CustomButton(),
            SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }
}


