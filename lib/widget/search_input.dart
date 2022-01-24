import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_e_learning_course/constants/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: fontLight.withOpacity(0.3),width: 2),

            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for history, classes,....",
                hintStyle: TextStyle(color: fontLight),
                fillColor: fontLight.withOpacity(0.1),
                filled: true,
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(18.0)
              ),
            ),
          ),
          Positioned(
            right: 45.0,
              top: 35.0,
              child:Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: accent,
                ),
                child: Icon(Icons.search,color: backgroundColor,),
              ) )
        ],
      ),
    );
  }
}
