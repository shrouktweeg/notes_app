import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/constants.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex=0;

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
              BlocProvider.of<AddNoteCubit>(context).color=kColorList[index];
              setState(() {
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

