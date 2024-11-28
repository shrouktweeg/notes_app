import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        color: const Color(0XFFFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
              title: const Text('Flutter Tips',style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Build your career with Tharwat Samy',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 20
                  ),),
              ),
              trailing:IconButton(onPressed: (){}, icon:  const FaIcon(FontAwesomeIcons.trash,color: Colors.black,size: 28,),)
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(' Nov29 , 2024 ',style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 16
            ),),
          )
        ],
      ),
    );
  }
}
