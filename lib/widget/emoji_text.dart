  import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_e_learning_course/constants/colors.dart';

class EmojiText extends StatelessWidget {
    const EmojiText({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.only(left: 18.0),
        child: RichText(text: TextSpan(
          children: [
            TextSpan(
              text: "Let's boost your\n brain power ",
              style: TextStyle(fontSize: 22.0,color: font,fontWeight: FontWeight.w600)
            ),
            TextSpan(text: "✨",
                style: TextStyle(fontSize: 22.0))
          ]
        )),
      );
    }
  }
  