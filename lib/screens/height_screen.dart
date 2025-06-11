import 'package:fitness_app/models/detailled_page_button.dart';
import 'package:fitness_app/models/detailled_page_title.dart';
import 'package:fitness_app/models/list_wheel_view_scroller.dart';
import 'package:flutter/material.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({super.key});

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> items = [];

    for (int i = 0; i < 200; ++i) {
      items.add((i + 1).toString() + ' ' + 'cm');
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Detailledpagetitle(title: "How tall are you?"),
            SizedBox(height: size.height * 0.055),

            SizedBox(
              height: size.height * 0.5,
              child: ListWheelViewScroller(items: items),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Detailledpagebutton(
              text: "Next",
              onTap: () {
                Navigator.pushNamed(context, "/weight");
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
