
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_e_learning_course/constants/colors.dart';
import 'package:flutter_ui_e_learning_course/data/courses.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'category_title.dart';

class ActiveCourse extends StatelessWidget {
  const ActiveCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle(leftText: 'Currently active',rightText: 'view all',),
          Container(
            margin: EdgeInsets.all(25.0),
            padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
            height: 80,
            decoration: BoxDecoration(
              color: fontLight.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: fontLight.withOpacity(0.3),width: 1)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network("http://caramayan.com/wp-content/uploads/2015/11/course-icon.png",width: 60,),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Symmetry theory",style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),),
                          const   SizedBox(
                            height: 3,
                          ),
                          Text("2 lessons left",style: TextStyle(
                              color: fontLight
                          ),)

                        ],
                      ),
                    ),

                  ],
                ),
                CircularPercentIndicator(
                  radius: 30.0,
                  lineWidth: 5.0,
                  percent: 0.61,
                  center: Text("61%"),
                  progressColor: accent,
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
