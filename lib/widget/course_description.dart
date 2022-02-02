import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_e_learning_course/constants/colors.dart';
import 'package:flutter_ui_e_learning_course/models/courses.dart';

class CourseDescription extends StatelessWidget {
  final Courses course;
  const CourseDescription({Key? key,required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage:AssetImage(course.authorImg),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(course.author,style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: fontLight,
                ),
              ),
              Icon(Icons.access_time,color: accent,),
              SizedBox(
                width: 5.0,
              ),
              Text("1h 35 min")
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(course.title,style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: font),),
          SizedBox(
            height: 5.0,
          ),
          Text("How we developed speech and grow  and how it become such a powerful tool let's see",
          style: TextStyle(
              color: fontLight,
              wordSpacing: 2.0,
              fontSize: 16.0,
              fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
