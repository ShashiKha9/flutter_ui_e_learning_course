
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_e_learning_course/constants/colors.dart';

class CategoryTitle extends StatelessWidget {
  String leftText='';
  String rightText='';

   CategoryTitle({Key? key,required this.leftText,required this.rightText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftText,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
          Text(rightText,style: TextStyle(color: fontLight),)
        ],
      ),
    );
  }
}
