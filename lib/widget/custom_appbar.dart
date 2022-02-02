import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_e_learning_course/constants/colors.dart';
import 'package:flutter_ui_e_learning_course/data/courses.dart';
import 'package:flutter_ui_e_learning_course/models/courses.dart';

class CustomAppBar extends StatelessWidget {
  final Courses course;
   CustomAppBar (this.course);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
        actions: [Icon(Icons.email)],
      ),
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset(course.imageUrl),
                  ),
                ),
                Positioned(
                  bottom: 0,
                    right: 40,
                    child: Container(
                      height: 50,
                      width: 110,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          primary: accent,

                        ),
                        onPressed: () {  },
                        child: Text("Start class"),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );

  }
}
