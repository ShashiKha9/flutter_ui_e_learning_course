import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_e_learning_course/constants/colors.dart';

class CourseProgress extends StatelessWidget {
  const CourseProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("The progress",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
          Row(
            children: [
              Icon(Icons.grid_view,color: fontLight,),
              SizedBox(
                width: 15.0,
              ),
              Icon(Icons.settings_applications_rounded,)
            ],
          )
        ],
      ),
    );
  }
}
