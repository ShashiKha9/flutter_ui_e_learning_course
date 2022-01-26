import 'package:flutter/material.dart';
import 'package:flutter_ui_e_learning_course/constants/colors.dart';
import 'package:flutter_ui_e_learning_course/models/courses.dart';
import 'package:flutter_ui_e_learning_course/widget/active_courses.dart';
import 'package:flutter_ui_e_learning_course/widget/category_title.dart';
import 'package:flutter_ui_e_learning_course/widget/course_item.dart';
import 'package:flutter_ui_e_learning_course/widget/emoji_text.dart';
import 'package:flutter_ui_e_learning_course/widget/search_input.dart';

class HomeScreen extends StatelessWidget {
  final Courses course;
  HomeScreen(this.course);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EmojiText(),
            SearchInput(),
            CategoryTitle(leftText: 'Top of the Week',rightText: 'view all',),
            CourseItem( courseList: course,
              course: Courses(title: course.title, imageUrl: course.imageUrl, author: author, authorImg: authorImg),),
            ActiveCourse(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: "Home",
            icon: Container(
              padding: EdgeInsets.only(bottom: 7),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(
                  color: accent,width: 2.0
                ))
              ),
              child: Text("Home",style: TextStyle(
                  fontWeight: FontWeight.bold,
                letterSpacing: 1.2
              ),),
            )),
        BottomNavigationBarItem(
          label: "Calendar",
            icon: Icon(Icons.calendar_today_outlined,color: fontLight)),
        BottomNavigationBarItem(
            label: "Bookmark",
            icon: Icon(Icons.bookmark_border,color: fontLight)),
        BottomNavigationBarItem(
            label: "User",
            icon: Icon(Icons.person,color: fontLight,)),
      ],
    );
  }
  _buildAppBar(){
   return  AppBar(
      backgroundColor:backgroundColor,
      elevation: 0,
      title: Text("Hello User!",style: TextStyle(
          fontSize: 16.0,color: fontLight),),
      actions: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(top: 10,right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: fontLight.withOpacity(0.3),width: 2.0)
              ),
              child: Icon(Icons.album,color: Colors.black45,size: 30.0,),
            ),
            Positioned(
                top: 15,
                right: 30,
                child: Container(
                  height: 8.0,
                  width: 8.0,
                  decoration: BoxDecoration(
                      color: accent,
                      shape: BoxShape.circle
                  ),

                ))
          ],
        )
      ],
    );

  }
}
