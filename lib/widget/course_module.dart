import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_e_learning_course/constants/colors.dart';

class CourseModule extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      height: 180,
      child: Row(
        children: [
          Flexible(
            flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: accent),
                        shape: BoxShape.circle,
                        color: accent,
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        size: 30.0,
                        color: backgroundColor,),
                    ),
                    Expanded(
                        child: Column(
                          children:
                            List.generate(20, (index) => Expanded(
                                child: Container(
                                  width: 2,
                                  color: index %2==0 ? Colors.transparent : accent,
                                )))
                        ))
                  ],

                ),
              )),
          Flexible(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: backgroundColor,width: 5.0),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("MODULE 1",style: TextStyle(
                          fontWeight: FontWeight.bold,
                      color: fontLight
                      ),),
                      Icon(Icons.file_download,color: fontLight,)
                    ],
                  ),
                  SizedBox(
                    height:10.0
                  ),
                  Text("How it all started\nExplanation"),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      _buildIcon(Icons.alarm,"22 min"),
                      SizedBox(
                        width: 10,
                      ),
                      _buildIcon(Icons.book_outlined,"2 lessons")

                    ],
                  )

                ],
              ),

            ),
          )
          
        ],
      ),
    );
  }

  Container _buildIcon(IconData icon,String text) {
    return Container(
                   padding: EdgeInsets.all(5.0),
                      width:50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(icon,color: fontLight,),
                          SizedBox(
                            width:5,
                          ),
                          Text(text,style: TextStyle(
                            fontSize: 16.0,
                            color: fontLight,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    );
  }
}
