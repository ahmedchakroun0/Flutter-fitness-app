import 'package:fitness_app/models/detailled_page_button.dart';
import 'package:fitness_app/models/detailled_page_title.dart';
import 'package:fitness_app/models/list_wheel_view_scroller.dart';
import 'package:flutter/material.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  State<AgeScreen> createState() => AgeScreenState();
}

class AgeScreenState extends State<AgeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> items = [];
    for (int i = 0; i < 100; ++i) {
      items.add((i + 1).toString());
    }
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(
          top: size.width * 0.1,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.width * 0.03,
        ),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Detailledpagetitle(title: "How old are you"),
            SizedBox(height: size.height * 0.02),

            SizedBox(
              height: size.height * 0.5,
              child: ListWheelViewScroller(items: items),
            ),

            SizedBox(height: size.height * 0.02),
            Detailledpagebutton(
              text: "Next",
              onTap: () {
                Navigator.pushNamed(context, "/height");
              },
              showBackButton: true,
              onBackTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
