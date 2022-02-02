import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_e_learning_course/data/courses.dart';
import 'package:flutter_ui_e_learning_course/models/courses.dart';
import 'package:flutter_ui_e_learning_course/widget/custom_appbar.dart';

class CourseDetailScreen extends StatelessWidget {

final Courses course;
CourseDetailScreen(this.course);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar( course,),
          ],
        ),

      ),
    );
  }
}
