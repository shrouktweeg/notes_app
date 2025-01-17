import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex=0;
  List<Color>colorList=const[
    Color(0Xff5B913B),
    Color(0xff77B254),
    Color(0xffFFE8B6),
    Color(0xffD99D81),
    Color(0xff86A788),
    Color(0xffFFFDEC),
    Color(0xffFFE2E2),
    Color(0xffFFCFCF),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: colorList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              currentIndex=index;
              BlocProvider.of<AddNoteCubit>(context).color=colorList[index];
              setState(() {
              });
            },
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: ColorItem(isActive: currentIndex==index,color: colorList[index],),
              )
          );
        },
      ),
    );
  }
}

