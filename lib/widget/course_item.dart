import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_e_learning_course/constants/colors.dart';
import 'package:flutter_ui_e_learning_course/data/courses.dart';
import 'package:flutter_ui_e_learning_course/models/courses.dart';
import 'package:flutter_ui_e_learning_course/screens/course_detail_screen.dart';

class CourseItem extends StatelessWidget {
  final  List<Courses> courseList;
   final Courses course;
  const CourseItem({Key? key, required this.courseList,required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Stack(
        children: [
          Container(
            height: 320,
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:courseList.length,
                itemBuilder: (context,index){
                final Courses course = courseList[index];
                  return
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(15.0)
              ),
              margin: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                      child: Image(image: AssetImage(course.imageUrl)
                        ,fit: BoxFit.cover,),
                    ),
                  ),Expanded(
                    flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15.0,
                                  backgroundImage: AssetImage(course.authorImg),
                                ),
                                SizedBox(width: 5,),
                                Text(course.author,style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    letterSpacing: 1.2),)
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(course.title,style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: font
                                ),),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: fontLight
                                  ),
                                ),
                                Text("2h 22min",style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: fontLight
                                ),),
                              ],
                            )
                          ],
                  ),
                      ))
                ],
              ),
            );


                }
          ),
          ),
          Positioned(
            bottom: 90,
              right: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: accent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),

                onPressed: ()=> Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> CourseDetailScreen(course))),
                child: Text("Start"),
              )),

        ],
      ),
    );
  }
}
