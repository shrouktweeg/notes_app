import 'package:flutter/material.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_view_model.dart';
import 'package:notes/widgets/color_item.dart';

class EditNotesColorList extends StatefulWidget {
  const EditNotesColorList({super.key, required this.note});
  final NoteViewModel note;

  @override
  State<EditNotesColorList> createState() => _EditNotesColorListState();
}

class _EditNotesColorListState extends State<EditNotesColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex=kColorList.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: kColorList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return GestureDetector(
              onTap: (){
                currentIndex=index;
                setState(() {
                  widget.note.color=kColorList[index].value;
                });
              },
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: ColorItem(isActive: currentIndex==index,color: kColorList[index],),
              )
          );
        },
      ),
    );

  }
}

